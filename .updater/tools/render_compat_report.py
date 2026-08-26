#!/usr/bin/env python3
"""Merge spec level and SDK level compatibility results into one markdown report.

The report is what lands in the pull request body, so it has to be readable by someone who did not
run the workflow: verdict first, then what exactly breaks and for whom, then the noise folded away.

Usage:
    render_compat_report.py -o compat-report.md RESULT.json [RESULT.json ...]
        [--title "..."] [--max-bytes 60000] [--artifact-hint "..."]

Prints ``breaking=<n>`` and ``migration=<n>`` to stdout (and to $GITHUB_OUTPUT if set) so the
workflow can label the pull request.
"""
from __future__ import annotations

import argparse
import json
import os
import sys

BREAKING, MIGRATION, TOLERATED, ADDITIVE = "BREAKING", "MIGRATION", "TOLERATED", "ADDITIVE"

MIGRATION_NOTE = """
> ⚠️ **Declared source breaking changes.** The API version bump announces them, so they do not fail
> the gate - but code written against the previous SDK stops working: a renamed method is simply not
> found, a reordered parameter silently binds the wrong value. Every entry below is a call site SDK
> users have to touch. Cover them with deprecated aliases (`pysirius_compat.py`,
> `rsirius_compat.R`) so the previous names keep working for one release, and migrate the test
> suites to the new names.
"""

WHAT_NOW = """
<details><summary>What to do with a breaking change</summary>

1. **It is a bug in the API release** - fix it on the SIRIUS side and re-run the updater.
2. **It is deliberate** - bump the API version (`3.1` -> `3.2`), which declares the break and makes
   this check pass, or re-run the updater with `allow_breaking_api_changes: true`.
3. **It is deliberate and the version cannot move** - add the finding id to
   `.updater/tools/compat-accepted.json` with a reason, a date and your name.
4. **It should be worked around** - commit the workaround onto *this* update branch before merging;
   that is what this PR exists for.

A finding attributed to a generator upgrade (the note says so) is not an API problem: either pin the
old generator back or keep the compatibility shim in the templates.
</details>
"""


def load(path: str) -> dict:
    with open(path, encoding="utf-8") as handle:
        return json.load(handle)


def label(result: dict) -> str:
    if result.get("source") == "spec":
        return f"API spec - {result.get('language', 'spec')}"
    return f"{result.get('language', '?').upper()} SDK surface"


def meta_line(result: dict) -> str:
    old, new = result.get("old_meta") or {}, result.get("new_meta") or {}
    bits = []
    if old.get("package_version") or new.get("package_version"):
        bits.append(f"package `{old.get('package_version')}` → `{new.get('package_version')}`")
    if old.get("api_version") or new.get("api_version"):
        bits.append(f"API `{old.get('api_version')}` → `{new.get('api_version')}`")
    if old.get("generator_version") != new.get("generator_version"):
        bits.append(f"**generator `{old.get('generator_version')}` → "
                    f"`{new.get('generator_version')}`**")
    elif old.get("generator_version"):
        bits.append(f"generator `{old.get('generator_version')}`")
    return ", ".join(bits)


def rename_pairs(findings: list[dict]) -> list[tuple[str, str]]:
    """old -> new for every rename, so the report doubles as the alias checklist"""
    pairs = []
    for finding in findings:
        if "renamed" not in finding["kind"]:
            continue
        message = finding["message"]
        if " renamed " in message and " -> " in message:
            tail = message.split(" renamed ", 1)[1].split(" (")[0]
            if " -> " in tail:
                before, after = tail.split(" -> ", 1)
                pairs.append((before.strip(), after.strip()))
        elif " renamed to " in message:
            before = message.split(" renamed to ")[0].split()[-1]
            after = message.split(" renamed to ")[1].split()[0]
            pairs.append((before.strip(), after.strip()))
    return pairs


def table(findings: list[dict], with_reason: bool, reason_header: str = "Why it is not breaking") -> list[str]:
    header = ["| What | Detail |", "| --- | --- |"] if not with_reason else \
             [f"| What | Detail | {reason_header} |", "| --- | --- | --- |"]
    rows = []
    for finding in findings:
        message = finding["message"].replace("|", "\\|").replace("\n", " ")
        note = finding.get("note")
        if note and not with_reason:
            message = f"{message}<br>_{note}_"
        if with_reason:
            reason = (finding.get("excuse") or "").replace("|", "\\|")
            rows.append(f"| `{finding['kind']}` | {message} | {reason} |")
        else:
            rows.append(f"| `{finding['kind']}` | {message} |")
    return header + rows


def section(result: dict) -> list[str]:
    buckets: dict[str, list[dict]] = {BREAKING: [], MIGRATION: [], TOLERATED: [], ADDITIVE: []}
    for finding in result.get("findings") or []:
        buckets.setdefault(finding["severity"], []).append(finding)

    out = [f"### {label(result)}", ""]
    if result.get("baseline", "present") is None:
        out += ["_No baseline snapshot yet - this run establishes it._", ""]
        return out
    if meta_line(result):
        out += [meta_line(result), ""]

    if buckets[BREAKING]:
        out += [f"**{len(buckets[BREAKING])} breaking change(s)**", ""]
        out += table(buckets[BREAKING], with_reason=False)
        out += [""]
        ids = "\n".join(finding["id"] for finding in buckets[BREAKING])
        out += ["<details><summary>Finding ids (for <code>compat-accepted.json</code>)</summary>",
                "", "```", ids, "```", "", "</details>", ""]
    elif not buckets[MIGRATION]:
        out += ["No breaking changes. ✅", ""]

    if buckets[MIGRATION]:
        out += [f"**{len(buckets[MIGRATION])} declared source breaking change(s)** - existing user "
                f"code has to be migrated", ""]
        out += table(buckets[MIGRATION], with_reason=True, reason_header="Declared by")
        out += [""]
        pairs = rename_pairs(buckets[MIGRATION])
        if pairs:
            out += ["Renames to alias:", "", "| was | is now |", "| --- | --- |"]
            out += [f"| `{before}` | `{after}` |" for before, after in pairs]
            out += [""]

    for title, key in (("Tolerated", TOLERATED), ("Additive", ADDITIVE)):
        items = buckets[key]
        if not items:
            continue
        out += [f"<details><summary>{title} ({len(items)})</summary>", ""]
        out += table(items, with_reason=(key == TOLERATED))
        out += ["", "</details>", ""]
    return out


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("results", nargs="+")
    parser.add_argument("-o", "--output", required=True)
    parser.add_argument("--title", default="SDK backward compatibility")
    parser.add_argument("--intro", default="", help="text inserted above the report")
    parser.add_argument("--max-bytes", type=int, default=0,
                        help="truncate the report (the PR body limit is 65536 bytes)")
    parser.add_argument("--artifact-hint", default="",
                        help="where the untruncated report can be downloaded")
    args = parser.parse_args()

    results = [load(path) for path in args.results if os.path.exists(path)]
    breaking = sum(len([f for f in (r.get("findings") or []) if f["severity"] == BREAKING])
                   for r in results)
    migration = sum(len([f for f in (r.get("findings") or []) if f["severity"] == MIGRATION])
                    for r in results)

    lines = [f"## {args.title}", ""]
    if args.intro:
        lines += [args.intro, ""]
    if breaking:
        lines += [f"> ⛔ **{breaking} undeclared breaking change(s)** for existing SDK users. The "
                  f"update branch is here so a workaround can be committed before this is merged.",
                  ""]
    elif migration:
        lines += [f"> ⚠️ No undeclared breaks, but **{migration} declared source breaking "
                  f"change(s)**: user code written against the previous SDK stops working.", ""]
    else:
        lines += ["> ✅ The generated clients stay backward compatible.", ""]

    lines += ["| Source | Breaking | Migration | Tolerated | Additive |",
              "| --- | --- | --- | --- | --- |"]
    for result in results:
        summary = result.get("summary") or {}
        lines.append(f"| {label(result)} | {summary.get(BREAKING, 0)} | "
                     f"{summary.get(MIGRATION, 0)} | {summary.get(TOLERATED, 0)} | "
                     f"{summary.get(ADDITIVE, 0)} |")
    lines += [""]
    if migration:
        lines += [MIGRATION_NOTE, ""]

    for result in results:
        lines += section(result)

    if breaking:
        lines += [WHAT_NOW]
    lines += ["", "<sub>Generated by `.updater/tools/render_compat_report.py`. Policy: "
              "`SDK-COMPAT-PLAN.md`.</sub>"]

    report = "\n".join(lines)
    if args.max_bytes and len(report.encode()) > args.max_bytes:
        cut = report.encode()[:args.max_bytes - 400].decode(errors="ignore")
        report = (cut + "\n\n_[report truncated]_ "
                  + (args.artifact_hint or "The full report is a workflow artifact."))
    with open(args.output, "w", encoding="utf-8") as handle:
        handle.write(report + "\n")

    print(f"breaking={breaking}")
    print(f"migration={migration}")
    if os.environ.get("GITHUB_OUTPUT"):
        with open(os.environ["GITHUB_OUTPUT"], "a", encoding="utf-8") as handle:
            handle.write(f"breaking={breaking}\n")
            handle.write(f"migration={migration}\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())
