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

| Severity  | Meaning | Examples |
| --------- | ------- | -------- |
| BREAKING  | nobody was warned; fails the gate | class / method / field / export removed; method renamed; parameter removed, reordered or newly required; field type or alias changed; enum constant removed or its wire value changed - none of it covered by a marker, a version bump or the accept list |
| MIGRATION | source breaking but declared; does not fail the gate, but must be visible | the same changes, announced by an API version bump. User code written against the previous SDK still stops working - a renamed method is not found, a reordered parameter binds the wrong value |
| TOLERATED | nothing to do | the old symbol's origin was already marked unstable; the schema is not reachable from any operation; enum constant added (strict clients such as pydantic still reject unknown values on responses); entries on the accept list |
| ADDITIVE  | new surface | new classes, methods, optional fields, optional parameters, exports |

**Why MIGRATION exists.** An API version bump declares a break; it does not undo it. Filing the
`get*Paged` -> `get*Page` renames of API 3.2 under TOLERATED said "nothing to do here" about nine
methods that every existing script calls. MIGRATION is the honest middle: it does not block the
release, and it is the list of call sites users have to touch - which is exactly the list the
deprecated aliases have to cover. The report renders it as an open table plus an old -> new rename
checklist.

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
4. The blocking check is the `CompatGate` job in **`RunTests.yml`**, not in `NewUpdate.yml`. A check
   only counts towards branch protection when it reports on the pull request *head*, and NewUpdate is
   dispatched on the temp branch *before* its own auto-commit - its checks land on the commit the run
   started at, which the auto-commit and every later commit then leave behind. The first attempt put
   the gate in NewUpdate and the required check sat at "Expected, waiting for status to be reported"
   forever.

   The pull request job needs neither SIRIUS nor the generators: it re-extracts both snapshots from
   the checked out tree and compares them, plus the api-docs, against `origin/$base_ref`. It fails on
   unexcused BREAKING only; MIGRATION is a warning. It also asserts that the **committed** snapshots
   match what it just extracted, so a hand edit on a branch cannot leave the next release comparing
   against a baseline that never existed.

   `allow_breaking_api_changes` keeps its meaning by travelling to the pull request as the
   `allow-breaking-api-changes` label, which the gate honours; the label can also be added by hand on
   any pull request.

## Deprecated aliases

A MIGRATION finding is not only something to report, it is something to soften. When an operation is
renamed, the old SDK method names are kept for one release as thin deprecated wrappers, the same way
the Java SDK does it in its hand written `*ApiCompat` classes:

| | |
| --- | --- |
| `client-api_python/pysirius_compat.py` | declares the renames, attaches the old names to the generated API classes at import time (users get the classes from `PySirius` directly, so a subclass would never be reached), warns with `FutureWarning` |
| `client-api_r/rsirius_compat.R` | adds the old names to the generated R6 generators with `$set()`, warns via `.Deprecated()` |

Both bind the caller's positional arguments to the **old** parameter names and forward by keyword,
because a rename can come with an inserted parameter - API 3.2 added `searchQuery` in second
position to `getCompoundsPage` and in fifth to `getAlignedFeaturesPage`, so a naive delegation would
silently shift every positional argument.

The aliases are public surface, so both extractors report them: the R extractor understands
`Generator$set("public", ...)`, and the Python extractor reads the declaration table out of
`pysirius_compat.py` rather than importing anything. Without that, deleting the aliases later would
go unnoticed - which is the whole point of keeping them in the snapshot.

The test suites move to the new names; one test per API keeps the deprecated name covered so the
shim cannot rot silently.

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
* **First production run (SIRIUS 6.3.12 -> 6.5.4, API 3.1 -> 3.2)**: 0 breaking, 20 MIGRATION at
  the spec level (nine `get*Paged` -> `get*Page` operationId renames plus `Tag.value` retyped from
  `object` to `AnyValue`), and after the deprecated aliases were added, **1** MIGRATION at the SDK
  level and 0 for R - the shim absorbs every rename, and what is left is the `Tag.value` type change
  that no alias can hide. That gap between "20 declared at the API" and "1 reaching users" is the
  thing the two levels exist to measure.
* **What both levels missed in that same run.** Four endpoints started returning HTTP 406. Neither
  guard saw it coming: the spec's media types are byte identical to the previous release and the SDK
  surface did not move. The cause was behavioural on both sides - SIRIUS began documenting its RFC
  7807 error body on every operation, and the generators' "first media type containing json wins"
  rule then asked the CSV and text/plain endpoints for `application/problem+json`. A structural diff
  cannot reach that; a canary that calls one CSV endpoint would have caught it on the first run.
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
