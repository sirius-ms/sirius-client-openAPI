#!/usr/bin/env python3
"""Diff two SDK surface snapshots and report what breaks for existing SDK users.

Complements ``api_compat_check.py``: that one compares the server spec, this one compares the
*generated* clients, so it also catches breakage that a generator upgrade introduces while the spec
stays byte identical - the openapi-generator 7.24 ``createDefaultObjectMapper`` -> ``createDefaultMapper``
rename is the precedent this exists for.

Policy, matching the spec guard: a removal or a shape change is breaking unless the previous release
already marked its origin unstable ([EXPERIMENTAL] / [INTERNAL] / [DEPRECATED] / an operationId
ending in "Experimental"), or the change is declared by an API version bump, or it is on the accept
list. One deliberate difference: if the *generator* version changed between the two snapshots, an API
version bump no longer excuses anything, because the API version says nothing about the SDK surface.

Usage:
    sdk_compat_check.py OLD_SNAPSHOT NEW_SNAPSHOT [--json OUT] [--report-only]

Exit code 0 = compatible (or only excused changes), 1 = breaking changes, 3 = no baseline.
"""
from __future__ import annotations

import argparse
import json
import os
import sys

BREAKING, TOLERATED, ADDITIVE = "BREAKING", "TOLERATED", "ADDITIVE"
ACCEPT_LIST = os.path.join(os.path.dirname(os.path.abspath(__file__)), "compat-accepted.json")


def load(path: str) -> dict:
    with open(path, encoding="utf-8") as handle:
        return json.load(handle)


class Report:
    def __init__(self, language: str) -> None:
        self.language = language
        self.findings: list[dict] = []

    def add(self, severity: str, kind: str, symbol: str, message: str,
            origin: dict | None = None) -> None:
        self.findings.append({
            "id": f"{self.language}:{kind}:{symbol}",
            "severity": severity, "kind": kind, "symbol": symbol, "message": message,
            "origin": origin,
        })


# --------------------------------------------------------------------------- helpers

def by_endpoint(cls: dict) -> dict[str, list[str]]:
    out: dict[str, list[str]] = {}
    for name, method in (cls.get("methods") or {}).items():
        origin = method.get("origin")
        if origin and origin.get("endpoint"):
            out.setdefault(origin["endpoint"], []).append(name)
    return out


def pick_rename(removed: str, candidates: list[str]) -> str | None:
    """the new name for a method whose operation is unchanged; longest shared prefix wins"""
    if not candidates:
        return None
    if len(candidates) == 1:
        return candidates[0]
    return max(candidates, key=lambda name: len(os.path.commonprefix([removed, name])))


def compare_params(report: Report, symbol: str, old: list[dict], new: list[dict],
                   origin: dict | None) -> None:
    old_names = [p["name"] for p in old]
    new_names = [p["name"] for p in new]
    old_map = {p["name"]: p for p in old}
    new_map = {p["name"]: p for p in new}

    for name in old_names:
        if name not in new_map:
            report.add(BREAKING, "param-removed", f"{symbol}({name})",
                       f"parameter '{name}' removed from {symbol}", origin)
    for name in new_names:
        if name in old_map:
            continue
        if new_map[name]["required"]:
            report.add(BREAKING, "param-added-required", f"{symbol}({name})",
                       f"new required parameter '{name}' on {symbol}", origin)
        else:
            report.add(ADDITIVE, "param-added", f"{symbol}({name})",
                       f"new optional parameter '{name}' on {symbol}", origin)

    shared = [name for name in old_names if name in new_map]
    shared_new = [name for name in new_names if name in old_map]
    if shared != shared_new:
        report.add(BREAKING, "param-reordered", symbol,
                   f"parameter order changed on {symbol}: {shared} -> {shared_new} "
                   f"(positional callers get the wrong values)", origin)
    for name in shared:
        if not old_map[name]["required"] and new_map[name]["required"]:
            report.add(BREAKING, "param-now-required", f"{symbol}({name})",
                       f"parameter '{name}' of {symbol} is now mandatory", origin)
        elif old_map[name]["required"] and not new_map[name]["required"]:
            report.add(ADDITIVE, "param-now-optional", f"{symbol}({name})",
                       f"parameter '{name}' of {symbol} is now optional", origin)


def compare_fields(report: Report, cls_name: str, old: dict, new: dict,
                   origin: dict | None) -> None:
    for name, field in old.items():
        if name in new:
            continue
        report.add(BREAKING, "field-removed", f"{cls_name}.{name}",
                   f"field {cls_name}.{name} removed", origin)
    for name, field in new.items():
        if name in old:
            continue
        severity = BREAKING if field["required"] else ADDITIVE
        kind = "field-added-required" if field["required"] else "field-added"
        report.add(severity, kind, f"{cls_name}.{name}",
                   f"field {cls_name}.{name} added" + (" as mandatory" if field["required"] else ""),
                   origin)
    for name in old.keys() & new.keys():
        before, after = old[name], new[name]
        if before.get("type") != after.get("type") and before.get("type") is not None:
            report.add(BREAKING, "field-type-changed", f"{cls_name}.{name}",
                       f"field {cls_name}.{name} type changed: {before['type']} -> {after['type']}",
                       origin)
        if before.get("alias") != after.get("alias"):
            report.add(BREAKING, "field-alias-changed", f"{cls_name}.{name}",
                       f"field {cls_name}.{name} wire alias changed: {before['alias']} -> "
                       f"{after['alias']}", origin)
        if not before["required"] and after["required"]:
            report.add(BREAKING, "field-now-required", f"{cls_name}.{name}",
                       f"field {cls_name}.{name} is now mandatory", origin)


def compare_enum(report: Report, cls_name: str, old: dict, new: dict, origin: dict | None) -> None:
    for name in old.keys() - new.keys():
        report.add(BREAKING, "enum-member-removed", f"{cls_name}.{name}",
                   f"enum constant {cls_name}.{name} ({old[name]!r}) removed", origin)
    for name in new.keys() - old.keys():
        # additive for the server, but strictly validating clients reject unknown values
        report.add(TOLERATED, "enum-member-added", f"{cls_name}.{name}",
                   f"enum constant {cls_name}.{name} ({new[name]!r}) added - strict clients reject "
                   f"unknown values on responses", origin)
    for name in old.keys() & new.keys():
        if old[name] != new[name]:
            report.add(BREAKING, "enum-value-changed", f"{cls_name}.{name}",
                       f"enum constant {cls_name}.{name} wire value changed: {old[name]!r} -> "
                       f"{new[name]!r}", origin)


# --------------------------------------------------------------------------- diff

def compare(old: dict, new: dict) -> Report:
    report = Report(new.get("language", "sdk"))
    old_classes, new_classes = old["classes"], new["classes"]

    for name in sorted(set(old["exports"]) - set(new["exports"])):
        report.add(BREAKING, "export-removed", name,
                   f"'{name}' is no longer exported by the package",
                   (old_classes.get(name) or {}).get("origin"))
    for name in sorted(set(new["exports"]) - set(old["exports"])):
        report.add(ADDITIVE, "export-added", name, f"'{name}' is now exported by the package")

    # a class whose schema is unchanged but whose name changed is a rename, not a removal
    old_by_schema = {c["origin"]["name"]: n for n, c in old_classes.items()
                     if (c.get("origin") or {}).get("type") == "schema"}
    new_by_schema = {c["origin"]["name"]: n for n, c in new_classes.items()
                     if (c.get("origin") or {}).get("type") == "schema"}

    for name in sorted(old_classes.keys() - new_classes.keys()):
        cls = old_classes[name]
        origin = cls.get("origin")
        schema = (origin or {}).get("name")
        renamed = new_by_schema.get(schema) if schema else None
        if renamed and renamed not in old_classes:
            report.add(BREAKING, "class-renamed", name,
                       f"class {name} renamed to {renamed} (schema {schema} unchanged)", origin)
        else:
            report.add(BREAKING, "class-removed", name,
                       f"class {name} removed ({cls.get('kind')})", origin)
    for name in sorted(new_classes.keys() - old_classes.keys()):
        if name in old_by_schema.values():
            continue
        report.add(ADDITIVE, "class-added", name, f"class {name} added ({new_classes[name].get('kind')})",
                   new_classes[name].get("origin"))

    for name in sorted(old_classes.keys() & new_classes.keys()):
        old_cls, new_cls = old_classes[name], new_classes[name]
        origin = old_cls.get("origin")
        if old_cls.get("kind") != new_cls.get("kind"):
            report.add(BREAKING, "class-kind-changed", name,
                       f"class {name} changed from {old_cls['kind']} to {new_cls['kind']}", origin)

        old_methods, new_methods = old_cls["methods"], new_cls["methods"]
        new_endpoints = by_endpoint(new_cls)
        renames: dict[str, str] = {}
        for method in sorted(old_methods.keys() - new_methods.keys()):
            method_origin = old_methods[method].get("origin") or origin
            endpoint = (old_methods[method].get("origin") or {}).get("endpoint")
            candidates = [c for c in new_endpoints.get(endpoint, []) if c not in old_methods]
            target = pick_rename(method, candidates)
            if target:
                renames[method] = target
                report.add(BREAKING, "method-renamed", f"{name}.{method}",
                           f"{name}.{method} renamed to {name}.{target} (still calls "
                           f"{endpoint}) - every caller breaks", method_origin)
            else:
                report.add(BREAKING, "method-removed", f"{name}.{method}",
                           f"{name}.{method} removed", method_origin)
        for method in sorted(new_methods.keys() - old_methods.keys()):
            if method in renames.values():
                continue
            report.add(ADDITIVE, "method-added", f"{name}.{method}", f"{name}.{method} added",
                       new_methods[method].get("origin"))
        for method in sorted(old_methods.keys() & new_methods.keys()):
            compare_params(report, f"{name}.{method}", old_methods[method]["params"],
                           new_methods[method]["params"],
                           old_methods[method].get("origin") or origin)
        for method, target in renames.items():
            compare_params(report, f"{name}.{target}", old_methods[method]["params"],
                           new_methods[target]["params"], old_methods[method].get("origin"))

        compare_fields(report, name, old_cls["fields"], new_cls["fields"], origin)
        compare_enum(report, name, old_cls["enum_members"], new_cls["enum_members"], origin)

    return report


# --------------------------------------------------------------------------- policy

def load_accepted(path: str) -> dict[str, dict]:
    if not os.path.exists(path):
        return {}
    data = load(path)
    return {entry["id"]: entry for entry in data.get("accepted", [])}


def apply_policy(report: Report, old: dict, new: dict, accepted: dict[str, dict]) -> None:
    old_api, new_api = old["meta"].get("api_version"), new["meta"].get("api_version")
    old_gen, new_gen = old["meta"].get("generator_version"), new["meta"].get("generator_version")
    generator_changed = old_gen != new_gen
    version_bumped = old_api != new_api

    for finding in report.findings:
        if finding["severity"] != BREAKING:
            continue
        origin = finding.get("origin") or {}
        if origin.get("unstable"):
            finding["severity"] = TOLERATED
            finding["excuse"] = ("origin was marked [EXPERIMENTAL]/[INTERNAL]/[DEPRECATED] in the "
                                 "previous release")
        elif origin.get("orphan") and finding["kind"] in ("class-removed", "export-removed"):
            finding["severity"] = TOLERATED
            finding["excuse"] = "schema is not reachable from any operation (generator noise)"
        elif finding["id"] in accepted:
            entry = accepted[finding["id"]]
            finding["severity"] = TOLERATED
            finding["excuse"] = (f"accepted on {entry.get('added', '?')} by "
                                 f"{entry.get('by', '?')}: {entry.get('reason', '')}")
        elif version_bumped and not generator_changed:
            finding["severity"] = TOLERATED
            finding["excuse"] = f"declared by the API version bump {old_api} -> {new_api}"
        elif version_bumped and generator_changed:
            finding["note"] = (f"the API version bump {old_api} -> {new_api} does not excuse this: "
                               f"the generator changed too ({old_gen} -> {new_gen}), so the cause "
                               f"may be the generator, not the API")


# --------------------------------------------------------------------------- main

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("old_snapshot")
    parser.add_argument("new_snapshot")
    parser.add_argument("--json", dest="json_out", help="write the structured findings here")
    parser.add_argument("--report-only", action="store_true",
                        help="always exit 0; the gate job decides")
    parser.add_argument("--accept-list", default=ACCEPT_LIST)
    args = parser.parse_args()

    new = load(args.new_snapshot)
    if not os.path.exists(args.old_snapshot) or os.path.getsize(args.old_snapshot) == 0:
        print(f"No baseline snapshot at {args.old_snapshot} - nothing to compare against. "
              f"This is expected on the first run; the new snapshot becomes the baseline.")
        if args.json_out:
            with open(args.json_out, "w", encoding="utf-8") as handle:
                json.dump({"language": new.get("language"), "baseline": None, "findings": [],
                           "summary": {BREAKING: 0, TOLERATED: 0, ADDITIVE: 0}}, handle, indent=1)
        return 0 if args.report_only else 3

    old = load(args.old_snapshot)
    if old.get("snapshot_version") != new.get("snapshot_version"):
        print(f"Snapshot format changed ({old.get('snapshot_version')} -> "
              f"{new.get('snapshot_version')}); regenerate the baseline before comparing.")
        return 0 if args.report_only else 3

    report = compare(old, new)
    apply_policy(report, old, new, load_accepted(args.accept_list))

    buckets = {BREAKING: [], TOLERATED: [], ADDITIVE: []}
    for finding in report.findings:
        buckets[finding["severity"]].append(finding)

    print(f"{new['language']} SDK surface: {old['meta'].get('package_version')} -> "
          f"{new['meta'].get('package_version')}  "
          f"(API {old['meta'].get('api_version')} -> {new['meta'].get('api_version')}, "
          f"generator {old['meta'].get('generator_version')} -> "
          f"{new['meta'].get('generator_version')})")
    print(f"classes: {len(old['classes'])} -> {len(new['classes'])}")
    for title in (BREAKING, TOLERATED, ADDITIVE):
        items = buckets[title]
        print(f"\n{title} ({len(items)})")
        for finding in items[:60]:
            suffix = ""
            if finding.get("excuse"):
                suffix = f"  [{finding['excuse']}]"
            elif finding.get("note"):
                suffix = f"  [{finding['note']}]"
            print(f"  - {finding['message']}{suffix}")
        if len(items) > 60:
            print(f"  ... {len(items) - 60} more")

    if args.json_out:
        with open(args.json_out, "w", encoding="utf-8") as handle:
            json.dump({
                "language": new["language"],
                "source": "sdk",
                "old_meta": old["meta"], "new_meta": new["meta"],
                "findings": report.findings,
                "summary": {key: len(value) for key, value in buckets.items()},
            }, handle, indent=1)

    if not buckets[BREAKING]:
        print("\nOK: the generated SDK stays backward compatible.")
        return 0
    print(f"\nFAILED: {len(buckets[BREAKING])} breaking change(s) in the generated SDK.\n"
          f"Either restore the removed parts, mark them unstable before removing them in a later\n"
          f"release, bump the API version, or add them to {os.path.basename(args.accept_list)} "
          f"with a reason.")
    return 0 if args.report_only else 1


if __name__ == "__main__":
    sys.exit(main())
