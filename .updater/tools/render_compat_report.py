#!/usr/bin/env python3
"""Merge spec level and SDK level compatibility results into one markdown report.

The report is what lands in the pull request body, so it has to be readable by someone who did not
run the workflow: verdict first, then what exactly breaks and for whom, then the noise folded away.

Usage:
    render_compat_report.py -o compat-report.md RESULT.json [RESULT.json ...]
        [--title "..."] [--max-bytes 60000] [--artifact-hint "..."]

Prints ``breaking=<n>`` to stdout (and to $GITHUB_OUTPUT if set) so the workflow can label the PR.
"""
from __future__ import annotations

import argparse
import json
import os
import sys

BREAKING, TOLERATED, ADDITIVE = "BREAKING", "TOLERATED", "ADDITIVE"

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


def table(findings: list[dict], with_reason: bool) -> list[str]:
    header = ["| What | Detail |", "| --- | --- |"] if not with_reason else \
             ["| What | Detail | Why it is not breaking |", "| --- | --- | --- |"]
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
    buckets: dict[str, list[dict]] = {BREAKING: [], TOLERATED: [], ADDITIVE: []}
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
    else:
        out += ["No breaking changes. ✅", ""]

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

    lines = [f"## {args.title}", ""]
    if args.intro:
        lines += [args.intro, ""]
    if breaking:
        lines += [f"> ⛔ **{breaking} breaking change(s)** for existing SDK users. The update branch "
                  f"is here so a workaround can be committed before this is merged.", ""]
    else:
        lines += ["> ✅ The generated clients stay backward compatible.", ""]

    lines += ["| Source | Breaking | Tolerated | Additive |", "| --- | --- | --- | --- |"]
    for result in results:
        summary = result.get("summary") or {}
        lines.append(f"| {label(result)} | {summary.get(BREAKING, 0)} | "
                     f"{summary.get(TOLERATED, 0)} | {summary.get(ADDITIVE, 0)} |")
    lines += [""]

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
    if os.environ.get("GITHUB_OUTPUT"):
        with open(os.environ["GITHUB_OUTPUT"], "a", encoding="utf-8") as handle:
            handle.write(f"breaking={breaking}\n")
    return 0


if __name__ == "__main__":
    sys.exit(main())
