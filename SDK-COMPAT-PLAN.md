# SDK backward-compatibility guard

Goal: every automatic client update tells us, on the PR itself, whether the freshly generated SDKs
are backward compatible for existing users, and if not, exactly what broke. The PR is created even
when something breaks, so a workaround can be committed onto the update branch before merging.

Status: stages 1-3 implemented and validated (see "Validation"). Stage 4 is optional and not
implemented - its value is spelled out below, because the validation run found one change it is the
only thing that would catch.

## Why the existing check is not enough

`.updater/tools/api_compat_check.py` compares the **server spec** (`api-docs-*.json`) against the
committed one and classifies changes as BREAKING / TOLERATED / ADDITIVE. Two gaps:

1. **It is blind to the generator.** A generator upgrade changes the generated SDK while the spec
   stays byte identical. Precedent: `sirius-frontend` commit `f7fea06a8` reverted its own
   openapi-generator 7.17 -> 7.24 upgrade because 7.24 renamed the public helper
   `ApiClient.createDefaultObjectMapper` to `createDefaultMapper` - an SDK-level removal with an
   unchanged REST API.
2. **It ran as a gate before generation and hard-failed the job.** On a breaking release there was
   then no branch, no generated SDK and no PR - nothing to build a workaround on, which is the
   opposite of what we want.

## Stability policy (unchanged, now applied at two levels)

An element may disappear or change shape without an API version bump only if the **previous**
release already marked it unstable: `[EXPERIMENTAL]`, `[INTERNAL]`, `[DEPRECATED]`,
`deprecated: true`, or an `operationId` ending in `Experimental`. Those endpoints are usually
excluded from the STABLE spec entirely (`sirius REST --api-mode=STABLE`) and therefore never reach
the SDKs, but the markers stay load bearing: hiding a *stable* endpoint - e.g. by adding its path to
the springdoc exclusion lists - must fail the check.

Everything else - removals, renames, type changes, enum constants dropped, request properties
becoming mandatory - requires at least a minor API version bump (3.1 -> 3.2).

## Stage 1 - SDK surface snapshot

`.updater/tools/sdk_symbols.py` dumps everything a user can touch into a normalized, sorted JSON
snapshot per language.

* **Python** - parsed with `ast`, the package is never imported:
  * `PySirius/api/*.py`: class -> public method -> parameter list in order, with required/optional
    and positional/keyword kind
  * `PySirius/models/*.py`: model class -> field `python_name`, `alias`, annotation, required flag;
    enum class -> member names **and** values
  * `PySirius/__init__.py`: the `__all__` export list
  * the hand-written layer `pysirius_sdk.py`, `pysirius_api.py`, `pysirius_helper.py` - the surface
    most users actually call
* **R** - parsed by `Rscript` with base `parse()` (`.updater/tools/sdk_symbols_r.R`, no packages
  beyond base R), so the real R grammar decides what a method is:
  * `NAMESPACE` exports
  * `R/*.R`: `R6Class` name -> public method names -> `formals` **in order** (R positional arguments
    make a reorder breaking) and field names
  * the hand-written `rsirius_sdk.R`, `rsirius_helper.R`
  * ordering matters: raw R generator output is **not valid R** until
    `client-api_r/patches/list_syntax_fix.sh` has turned `= [...]` defaults into `= list(...)`, so
    the extractor runs after the patch step. If it cannot parse, it says so and stops instead of
    reporting the whole package as removed - and R that stops parsing after a generator upgrade is
    itself a finding.

**Provenance.** Generated code has lost the `[EXPERIMENTAL]` markers, so the snapshot carries the
link back to the spec: every API method is joined to its operation by the `METHOD` + `resource_path`
pair that both generators embed in the request code (`resource_path='/api/...'` / `method='POST'` in
Python, `local_var_url_path <- "/api/..."` / `method = "POST"` in R). That is exact and survives any
generator renaming scheme, unlike guessing `operationId -> snake_case`. Model classes join to
schemas by name. Each symbol stores `unstable: true|false` resolved from the spec **at extraction
time**, which means the baseline snapshot carries the *previous* release's markers - exactly the
flag the policy asks about.

Snapshots are taken **after** `format_init.sh` and the R patch scripts, because those steps change
the shipped surface.

Committed as `.updater/api/sdk-surface-python.json` and `.updater/api/sdk-surface-r.json`, next to
the api-docs. The baseline is then `git show HEAD:...` - the same trick the spec guard already uses:
no extra state to maintain, and the surface delta shows up as a readable hunk in the PR diff.

## Stage 2 - Differ

`.updater/tools/sdk_compat_check.py` diffs two snapshots and classifies:

| Severity  | Examples |
| --------- | -------- |
| BREAKING  | class / method / field / export removed; method renamed; parameter removed, reordered or newly required; field type or alias changed; enum constant removed or its wire value changed |
| TOLERATED | the old symbol's origin was already marked unstable; enum constant added (strict clients such as pydantic still reject unknown values on responses); breaks declared by an API version bump; entries on the accept list |
| ADDITIVE  | new classes, methods, optional fields, optional parameters, exports |

* **Rename detection** matches on provenance, not on name: a method whose origin operation is
  unchanged but whose name changed is reported as a rename, not as removal + addition. That is the
  `createDefaultObjectMapper` case.
* **A version bump does not excuse a generator break.** If the generator version changed between the
  two snapshots, an API version bump no longer downgrades findings, because the API version says
  nothing about the SDK surface. If the generator is unchanged, the bump excuses as before.
* **Accept list** `.updater/tools/compat-accepted.json`: deliberate breaks keyed by finding id, with
  reason, date and author, so a known break stops nagging on every subsequent update.
* **Extractor sanity check**: an empty or implausibly small snapshot aborts instead of reporting the
  whole SDK as removed.

`api_compat_check.py` keeps its behaviour but gains `--json` and `--report-only`, and now runs over
**both** spec files - `api-docs-strings.json` (R) and `api-docs-enums.json` (Python). Only the
strings one was checked before, so enum-as-ref changes hitting the Python models were invisible.

## Stage 3 - Report and PR notification

`.updater/tools/render_compat_report.py` merges the spec-level and SDK-level result files into one
`compat-report.md`: verdict line, one table per source, the additive noise folded into `<details>`.

`NewUpdate.yml`:

1. The spec check runs `--report-only` and no longer aborts; generation always happens.
2. After generation and formatting: extract both snapshots, diff against `git show HEAD:`, render.
3. The report goes to `$GITHUB_STEP_SUMMARY`, is uploaded as a workflow artifact, and is passed to
   `gh pr create --body-file`. The workflow locks the PR immediately after creation, so a follow-up
   `gh pr comment` would be rejected - the body is the only reliable channel. A `breaking-change`
   label is added when unexcused BREAKING findings exist.
4. A separate `CompatGate` job re-reads the JSON and fails only on unexcused BREAKING findings. It is
   the required status check: the PR exists, the branch is there, a workaround can be committed onto
   it, and the merge stays blocked until the gate passes or `allow_breaking_api_changes` is set. That
   input keeps its meaning, it just moves from "abort everything" to "excuse the gate".

## Stage 4 (optional, not implemented) - behavioural canaries

A symbol diff cannot see serialization or runtime semantics. A small set of frozen, user-style
scripts under `.updater/clientTests/compat/` - never regenerated - run against the new SDK in
`PythonTest.yml` / `RTest.yml`. It is the only thing that catches "the field is still there but now
comes back `null`".

## Validation

Run on this repository before the mechanism went in:

* **Historical replay of the spec guard.** Comparing the committed `api-docs-strings.json` of
  `2c983e6b` against today's: 134 -> 87 operations, 104 -> 84 schemas, and the classifier separates
  them correctly - **65 tolerated** (every one an `[EXPERIMENTAL]`/`…Experimental` endpoint, the
  6.3.3 -> 6.3.4 mass removal) and **2 genuinely breaking**
  (`computeFoldChangeForBlankSubtraction`, schema `SampleTypeFoldChangeRequest`), both removed at an
  unchanged API version 3.1.
* **Generator upgrade, Python 7.16.0 -> 7.24.0** (the pending TODO-LATER item 2): both clients
  generated from the same spec and diffed. **97 files differ textually, 0 breaking surface
  changes**, 15 additive ones - new optional `Configuration.__init__` keyword arguments
  (`verify_ssl`, `proxy`, `socket_options`, `datetime_format`, …) and `RESTResponse.headers`. That
  is the separation of cosmetic churn from real surface change the guard exists for, and it says the
  Python generator upgrade is safe for this API.
* **Generator upgrade, R 7.10.0 -> 7.24.0**: **no surface change at all**; exactly one file differs,
  `R/api_response.R`, and the difference is a removed `warning("The response is binary and will not
  be converted to text.")` **inside** a method body. A symbol diff cannot see that, and should not
  pretend to - it is the argument for stage 4.
* **Synthetic breakage**: an injected method rename, a removed field, a changed field type, a
  changed wire alias, a dropped enum constant, a removed API class and a new mandatory parameter are
  all reported as breaking; the removal of an operation the baseline marked `[EXPERIMENTAL]` and the
  removal of an orphan-schema model are tolerated; a pure parameter reorder is reported.

## Files

| Path | Role |
| ---- | ---- |
| `.updater/tools/sdk_symbols.py` | snapshot extractor (Python side + provenance + R driver) |
| `.updater/tools/sdk_symbols_r.R` | R surface extraction with base `parse()` |
| `.updater/tools/sdk_compat_check.py` | snapshot differ and classifier |
| `.updater/tools/api_compat_check.py` | spec differ (existing, extended with `--json`/`--report-only`) |
| `.updater/tools/render_compat_report.py` | markdown report for the PR body |
| `.updater/tools/compat-accepted.json` | accepted, deliberate breaks |
| `.updater/api/sdk-surface-python.json` | committed baseline, Python |
| `.updater/api/sdk-surface-r.json` | committed baseline, R |

## Local use

```bash
.updater/tools/run_compat_check.sh          # baseline = git HEAD, working tree = new
```

Regenerates the snapshots, diffs them against HEAD, and renders the report into `build/compat/`
(gitignored) without touching the workflow. Add `--write` to also update the committed snapshots in
`.updater/api/` - needed whenever the generated clients change outside the update pipeline, because
a stale baseline makes the next run report the difference twice.
