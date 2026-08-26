#!/usr/bin/env python3
"""Backward compatibility check for the SIRIUS API docs, from the point of view of a generated SDK.

Compares a previous api-docs file against a newly fetched one and reports SDK breaking changes:
operations removed or renamed, schemas or properties removed, property types changed, enum
constants removed, and request properties that became mandatory.

The previous docs are simply the committed ones (``git show HEAD:<file>``), so git history is the
baseline and there is nothing extra to maintain.

An operation may disappear without an API version bump only if the *previous* release already
marked it unstable ([EXPERIMENTAL] / [INTERNAL] / [DEPRECATED] / ``deprecated: true`` / an
operationId ending in "Experimental"). That is what makes the markers load bearing: hiding a
stable endpoint - e.g. by adding its path to the springdoc exclusion lists - fails this check.

Usage:
    api_compat_check.py OLD_SPEC NEW_SPEC [--allow-breaking] [--json OUT] [--report-only]

Exit code 0 = compatible (or only tolerated changes), 1 = breaking changes found.

``--json`` writes the findings in the same shape ``sdk_compat_check.py`` produces, so
``render_compat_report.py`` can merge spec level and SDK level results into one PR comment.
"""
from __future__ import annotations

import argparse
import json
import os
import sys

BREAKING, MIGRATION, TOLERATED, ADDITIVE = "BREAKING", "MIGRATION", "TOLERATED", "ADDITIVE"
ACCEPT_LIST = os.path.join(os.path.dirname(os.path.abspath(__file__)), "compat-accepted.json")

UNSTABLE_MARKERS = ("[EXPERIMENTAL]", "[INTERNAL]", "[DEPRECATED]")


def load(path: str) -> dict:
    with open(path, encoding="utf-8") as handle:
        return json.load(handle)


def operations(spec: dict) -> dict[str, dict]:
    out: dict[str, dict] = {}
    for path, item in (spec.get("paths") or {}).items():
        for method, op in item.items():
            if isinstance(op, dict) and "operationId" in op:
                out[f"{method.upper()} {path}"] = op
    return out


def is_unstable(op: dict) -> bool:
    text = ((op.get("summary") or "") + (op.get("description") or "")).upper()
    return (any(marker in text for marker in UNSTABLE_MARKERS)
            or bool(op.get("deprecated"))
            or op.get("operationId", "").endswith("Experimental"))


def schemas(spec: dict) -> dict[str, dict]:
    return (spec.get("components") or {}).get("schemas") or {}


def refs(node, out: set[str]) -> None:
    if isinstance(node, dict):
        ref = node.get("$ref")
        if isinstance(ref, str) and ref.startswith("#/components/schemas/"):
            out.add(ref.rsplit("/", 1)[1])
        for value in node.values():
            refs(value, out)
    elif isinstance(node, list):
        for value in node:
            refs(value, out)


def _closure(spec: dict, seeds: set[str]) -> set[str]:
    all_schemas, seen, stack = schemas(spec), set(), list(seeds)
    while stack:
        name = stack.pop()
        if name in seen or name not in all_schemas:
            continue
        seen.add(name)
        found: set[str] = set()
        refs(all_schemas[name], found)
        stack.extend(found - seen)
    return seen


def request_reachable(spec: dict) -> set[str]:
    """schema names reachable from any requestBody (transitively)"""
    seeds: set[str] = set()
    for item in (spec.get("paths") or {}).values():
        for op in item.values():
            if isinstance(op, dict) and "requestBody" in op:
                refs(op["requestBody"], seeds)
    return _closure(spec, seeds)


def stable_reachable(spec: dict) -> set[str]:
    """schema names reachable from operations that are not marked unstable

    Used so that dropping the models of experimental endpoints is not reported as breaking:
    those model classes only ever existed for endpoints users were told not to rely on.
    """
    seeds: set[str] = set()
    for op in operations(spec).values():
        if not is_unstable(op):
            refs(op, seeds)
    return _closure(spec, seeds)


def _finding(severity: str, kind: str, symbol: str, message: str) -> dict:
    return {"id": f"spec:{kind}:{symbol}", "severity": severity, "kind": kind,
            "symbol": symbol, "message": message}


def compare(old: dict, new: dict) -> list[dict]:
    findings: list[dict] = []

    old_ops, new_ops = operations(old), operations(new)
    for key, op in old_ops.items():
        if key in new_ops:
            continue
        opid = op["operationId"]
        if is_unstable(op):
            findings.append(_finding(TOLERATED, "operation-removed", opid,
                                     f"{opid} removed ({key}) - was marked unstable in the previous "
                                     f"release"))
        else:
            findings.append(_finding(BREAKING, "operation-removed", opid,
                                     f"{opid} removed ({key}) - it was NOT marked unstable, so SDK "
                                     f"users lose it without warning"))
    for key in sorted(new_ops.keys() - old_ops.keys()):
        findings.append(_finding(ADDITIVE, "operation-added", new_ops[key]["operationId"],
                                 f"{new_ops[key]['operationId']} added ({key})"))
    for key in sorted(old_ops.keys() & new_ops.keys()):
        before, after = old_ops[key]["operationId"], new_ops[key]["operationId"]
        if before != after:
            findings.append(_finding(BREAKING, "operation-renamed", before,
                                     f"operationId renamed {before} -> {after} ({key}) - renames "
                                     f"every SDK method"))

    old_schemas, new_schemas = schemas(old), schemas(new)
    old_stable_schemas = stable_reachable(old)
    for name in sorted(old_schemas.keys() - new_schemas.keys()):
        if name in old_stable_schemas:
            findings.append(_finding(BREAKING, "schema-removed", name,
                                     f"schema {name} removed - it was used by a stable operation"))
        else:
            findings.append(_finding(TOLERATED, "schema-removed", name,
                                     f"schema {name} removed - only used by operations marked "
                                     f"unstable"))
    for name in sorted(new_schemas.keys() - old_schemas.keys()):
        findings.append(_finding(ADDITIVE, "schema-added", name, f"schema {name} added"))

    requestish = request_reachable(new)
    for name in sorted(old_schemas.keys() & new_schemas.keys()):
        old_schema, new_schema = old_schemas[name], new_schemas[name]
        old_props = old_schema.get("properties") or {}
        new_props = new_schema.get("properties") or {}

        for prop in sorted(old_props.keys() - new_props.keys()):
            findings.append(_finding(BREAKING, "property-removed", f"{name}.{prop}",
                                     f"property {name}.{prop} removed"))
        for prop in sorted(new_props.keys() - old_props.keys()):
            findings.append(_finding(ADDITIVE, "property-added", f"{name}.{prop}",
                                     f"property {name}.{prop} added"))
        for prop in sorted(old_props.keys() & new_props.keys()):
            before = old_props[prop].get("$ref") or old_props[prop].get("type")
            after = new_props[prop].get("$ref") or new_props[prop].get("type")
            if before != after:
                findings.append(_finding(BREAKING, "property-type-changed", f"{name}.{prop}",
                                         f"property {name}.{prop} type changed: {before} -> {after}"))

        old_enum = set(old_schema.get("enum") or [])
        new_enum = set(new_schema.get("enum") or [])
        for value in sorted(old_enum - new_enum):
            findings.append(_finding(BREAKING, "enum-member-removed", f"{name}.{value}",
                                     f"enum {name}: constant {value!r} removed"))
        for value in sorted(new_enum - old_enum):
            # additive for the server, but strictly validating clients reject unknown constants
            findings.append(_finding(TOLERATED, "enum-member-added", f"{name}.{value}",
                                     f"enum {name}: constant {value!r} added - strict clients "
                                     f"(e.g. pydantic) reject unknown values on responses"))

        old_required = set(old_schema.get("required") or [])
        new_required = set(new_schema.get("required") or [])
        if (new_required - old_required) and name in requestish:
            for prop in sorted(new_required - old_required):
                findings.append(_finding(BREAKING, "property-now-required", f"{name}.{prop}",
                                         f"schema {name}: property {prop} became mandatory - "
                                         f"existing requests without it are rejected"))

    return findings


def load_accepted(path: str) -> dict[str, dict]:
    if not os.path.exists(path):
        return {}
    with open(path, encoding="utf-8") as handle:
        return {entry["id"]: entry for entry in json.load(handle).get("accepted", [])}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("old_spec")
    parser.add_argument("new_spec")
    parser.add_argument("--allow-breaking", action="store_true",
                        help="report but do not fail; use when the API version is bumped deliberately")
    parser.add_argument("--report-only", action="store_true",
                        help="always exit 0; a separate gate job decides whether to fail the build")
    parser.add_argument("--json", dest="json_out", help="write the structured findings here")
    parser.add_argument("--accept-list", default=ACCEPT_LIST)
    parser.add_argument("--label", default="spec", help="name for this comparison in the report")
    args = parser.parse_args()

    old, new = load(args.old_spec), load(args.new_spec)
    old_version = (old.get("info") or {}).get("version")
    new_version = (new.get("info") or {}).get("version")
    findings = compare(old, new)

    accepted = load_accepted(args.accept_list)
    for finding in findings:
        if finding["severity"] != BREAKING:
            continue
        if finding["id"] in accepted:
            entry = accepted[finding["id"]]
            finding["severity"] = TOLERATED
            finding["excuse"] = (f"accepted on {entry.get('added', '?')} by {entry.get('by', '?')}: "
                                 f"{entry.get('reason', '')}")
        elif old_version != new_version:
            # the bump declares it, but every SDK call site still breaks - MIGRATION, not TOLERATED
            finding["severity"] = MIGRATION
            finding["excuse"] = f"declared by the API version bump {old_version} -> {new_version}"

    buckets = {BREAKING: [], MIGRATION: [], TOLERATED: [], ADDITIVE: []}
    for finding in findings:
        buckets[finding["severity"]].append(finding)

    print(f"API version: {old_version} -> {new_version}")
    print(f"operations : {len(operations(old))} -> {len(operations(new))}")
    print(f"schemas    : {len(schemas(old))} -> {len(schemas(new))}")

    for title in (BREAKING, MIGRATION, TOLERATED, ADDITIVE):
        items = buckets[title]
        print(f"\n{title} ({len(items)})")
        for finding in items[:60]:
            excuse = f"  [{finding['excuse']}]" if finding.get("excuse") else ""
            print(f"  - {finding['message']}{excuse}")
        if len(items) > 60:
            print(f"  ... {len(items) - 60} more")

    if args.json_out:
        with open(args.json_out, "w", encoding="utf-8") as handle:
            json.dump({"language": args.label, "source": "spec",
                       "old_meta": {"api_version": old_version},
                       "new_meta": {"api_version": new_version},
                       "findings": findings,
                       "summary": {key: len(value) for key, value in buckets.items()}},
                      handle, indent=1)

    if not buckets[BREAKING]:
        if buckets[MIGRATION]:
            print(f"\nOK for the gate, but {len(buckets[MIGRATION])} declared source breaking "
                  f"change(s) that SDK users have to migrate to.")
        else:
            print("\nOK: no SDK breaking changes.")
        return 0

    if args.allow_breaking:
        print("\nWARNING: breaking changes accepted via --allow-breaking.")
        return 0

    print(f"\nFAILED: breaking changes without an API version bump (still {new_version}).\n"
          f"Either restore the removed parts, mark them unstable before removing them in a later\n"
          f"release, bump the API version, or re-run with --allow-breaking if this is intended.")
    return 0 if args.report_only else 1


if __name__ == "__main__":
    sys.exit(main())
