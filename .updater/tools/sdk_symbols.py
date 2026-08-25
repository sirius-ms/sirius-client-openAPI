#!/usr/bin/env python3
"""Dump the public surface of a generated SIRIUS SDK to a normalized JSON snapshot.

The snapshot is what ``sdk_compat_check.py`` diffs. It deliberately contains only what a user can
touch - classes, public methods and their parameter order, model fields with their wire aliases,
enum constants and their values, package exports - and no timestamps, versions or generator noise
inside the body, so a diff is about the surface and nothing else.

Every API method is joined back to the operation it calls, using the ``METHOD`` + resource path that
both generators embed in the request code. That join is exact and survives generator renaming, which
matters because the whole point of this snapshot is to catch generator induced renames. The spec is
then asked whether that operation was marked unstable ([EXPERIMENTAL] / [INTERNAL] / [DEPRECATED] /
``deprecated: true`` / an operationId ending in "Experimental"); the flag is stored in the snapshot,
so the committed baseline carries the *previous* release's markers - exactly what the policy asks
about when something disappears.

Usage:
    sdk_symbols.py python -o .updater/api/sdk-surface-python.json
    sdk_symbols.py r      -o .updater/api/sdk-surface-r.json
"""
from __future__ import annotations

import argparse
import ast
import json
import os
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)

from api_compat_check import _closure, is_unstable, operations, refs, stable_reachable  # noqa: E402

SNAPSHOT_VERSION = 1

# A parser that silently stops matching would report the whole SDK as removed. Refuse to write a
# snapshot that is obviously the result of a broken extraction rather than of a shrinking SDK.
MIN_CLASSES = 40


# --------------------------------------------------------------------------- spec side

def load(path: str) -> dict:
    with open(path, encoding="utf-8") as handle:
        return json.load(handle)


def operation_index(spec: dict) -> dict[str, dict]:
    """"POST /api/..." -> {operationId, unstable}"""
    out = {}
    for key, op in operations(spec).items():
        out[key] = {"operation_id": op["operationId"], "unstable": is_unstable(op)}
    return out


def schema_index(spec: dict) -> dict[str, dict]:
    """schema name -> stability

    ``unstable``: reachable only from operations marked unstable, so the model class exists solely
    for endpoints users were told not to rely on. ``orphan``: not reachable from any operation -
    generator noise that the SDKs regain and lose without anything in the API changing.
    """
    stable = stable_reachable(spec)
    unstable_seeds: set[str] = set()
    for op in operations(spec).values():
        if is_unstable(op):
            refs(op, unstable_seeds)
    from_unstable = _closure(spec, unstable_seeds)
    out = {}
    for name in ((spec.get("components") or {}).get("schemas") or {}):
        reachable_stable = name in stable
        out[name] = {"unstable": not reachable_stable and name in from_unstable,
                     "orphan": not reachable_stable and name not in from_unstable}
    return out


# --------------------------------------------------------------------------- python side

def _params(node: ast.FunctionDef) -> list[dict]:
    args = node.args
    out: list[dict] = []
    positional = list(args.posonlyargs) + list(args.args)
    defaults = list(args.defaults)
    first_default = len(positional) - len(defaults)
    for index, arg in enumerate(positional):
        if arg.arg in ("self", "cls"):
            continue
        out.append({"name": arg.arg, "required": index < first_default, "kind": "positional"})
    if args.vararg:
        out.append({"name": "*" + args.vararg.arg, "required": False, "kind": "vararg"})
    for arg, default in zip(args.kwonlyargs, args.kw_defaults):
        out.append({"name": arg.arg, "required": default is None, "kind": "keyword"})
    if args.kwarg:
        out.append({"name": "**" + args.kwarg.arg, "required": False, "kind": "kwarg"})
    return out


def _field(node: ast.AnnAssign) -> dict | None:
    """a pydantic model attribute: name, wire alias, annotation and whether it must be supplied"""
    if not isinstance(node.target, ast.Name):
        return None
    name = node.target.id
    if name.startswith("_") or name == "model_config":
        return None
    alias, required = None, node.value is None
    if isinstance(node.value, ast.Call) and getattr(node.value.func, "id", "") == "Field":
        keywords = {kw.arg: kw.value for kw in node.value.keywords}
        if "alias" in keywords and isinstance(keywords["alias"], ast.Constant):
            alias = keywords["alias"].value
        required = "default" not in keywords and not node.value.args
    return {"name": name, "alias": alias or name,
            "type": ast.unparse(node.annotation), "required": required}


def _request_targets(cls: ast.ClassDef) -> dict[str, dict]:
    """base method name -> {http_method, path}, read out of the generated ``_x_serialize`` bodies"""
    out: dict[str, dict] = {}
    for node in cls.body:
        if not isinstance(node, ast.FunctionDef):
            continue
        if not (node.name.startswith("_") and node.name.endswith("_serialize")):
            continue
        found: dict[str, str] = {}
        for call in ast.walk(node):
            if not isinstance(call, ast.Call):
                continue
            for keyword in call.keywords:
                if keyword.arg in ("method", "resource_path") and isinstance(keyword.value, ast.Constant):
                    found.setdefault(keyword.arg, keyword.value.value)
        if "method" in found and "resource_path" in found:
            out[node.name[1:-len("_serialize")]] = {"http_method": found["method"],
                                                    "path": found["resource_path"]}
    return out


def _origin_for(base: str, targets: dict[str, dict], ops: dict[str, dict]) -> dict | None:
    target = targets.get(base)
    if not target:
        return None
    key = f"{target['http_method'].upper()} {target['path']}"
    op = ops.get(key)
    return {"type": "operation", "endpoint": key,
            "operation_id": op["operation_id"] if op else None,
            "unstable": bool(op and op["unstable"])}


def extract_python(root: str, extra: list[str], spec: dict) -> dict:
    ops, schemas = operation_index(spec), schema_index(spec)
    classes: dict[str, dict] = {}
    exports: list[str] = []

    files = [(os.path.join(root, "api", name), "api")
             for name in sorted(os.listdir(os.path.join(root, "api"))) if name.endswith(".py")]
    files += [(os.path.join(root, "models", name), "model")
              for name in sorted(os.listdir(os.path.join(root, "models"))) if name.endswith(".py")]
    files += [(os.path.join(root, name), "core")
              for name in ("api_client.py", "api_response.py", "configuration.py", "exceptions.py",
                           "rest.py")]
    files += [(path, "handwritten") for path in extra]

    for path, kind in files:
        if not os.path.exists(path):
            continue
        tree = ast.parse(open(path, encoding="utf-8").read())
        if os.path.basename(path) == "__init__.py":
            continue
        for cls in tree.body:
            if not isinstance(cls, ast.ClassDef) or cls.name.startswith("_"):
                continue
            bases = [ast.unparse(base) for base in cls.bases]
            is_enum = any(base.endswith("Enum") for base in bases)
            targets = _request_targets(cls) if kind == "api" else {}

            methods, fields, members = {}, {}, {}
            for node in cls.body:
                if isinstance(node, ast.FunctionDef):
                    if node.name.startswith("_") and node.name != "__init__":
                        continue
                    base = node.name
                    for suffix in ("_with_http_info", "_without_preload_content"):
                        if base.endswith(suffix):
                            base = base[:-len(suffix)]
                    methods[node.name] = {"params": _params(node),
                                          "origin": _origin_for(base, targets, ops)}
                elif isinstance(node, ast.AnnAssign):
                    field = _field(node)
                    if field:
                        fields[field["name"]] = field
                elif is_enum and isinstance(node, ast.Assign):
                    for target in node.targets:
                        if isinstance(target, ast.Name) and isinstance(node.value, ast.Constant):
                            members[target.id] = node.value.value

            classes[cls.name] = {
                "kind": "enum" if is_enum else kind,
                "bases": bases,
                "methods": methods,
                "fields": fields,
                "enum_members": members,
                "origin": ({"type": "schema", "name": cls.name,
                            "unstable": schemas[cls.name]["unstable"],
                            "orphan": schemas[cls.name]["orphan"]}
                           if cls.name in schemas else None),
            }

    init = os.path.join(root, "__init__.py")
    if os.path.exists(init):
        for node in ast.walk(ast.parse(open(init, encoding="utf-8").read())):
            if isinstance(node, ast.Assign) and any(
                    isinstance(t, ast.Name) and t.id == "__all__" for t in node.targets):
                exports = [e.value for e in node.value.elts if isinstance(e, ast.Constant)]

    return {"classes": classes, "exports": sorted(set(exports))}


# --------------------------------------------------------------------------- r side

def extract_r(root: str, extra: list[str], spec: dict) -> dict:
    ops, schemas = operation_index(spec), schema_index(spec)
    files = [os.path.join(root, "R", name)
             for name in sorted(os.listdir(os.path.join(root, "R"))) if name.endswith(".R")]
    files += [os.path.join(root, "NAMESPACE")]
    files += [path for path in extra if os.path.exists(path)]

    script = os.path.join(HERE, "sdk_symbols_r.R")
    raw = subprocess.run(["Rscript", script, *files], capture_output=True, text=True)
    if raw.returncode != 0:
        # Most likely the generated R does not parse - the raw generator output only becomes valid R
        # after client-api_r/patches/list_syntax_fix.sh has run. Say so instead of dumping a traceback.
        raise SystemExit(f"ERROR: the R surface extractor could not parse the generated package.\n"
                         f"Run it after the R patch scripts (patches/list_syntax_fix.sh); if a "
                         f"generator upgrade produced R that no longer parses, that is itself the "
                         f"finding.\n\n{raw.stderr.strip()}")
    if raw.stderr.strip():
        print(raw.stderr.strip(), file=sys.stderr)
    parsed = json.loads(raw.stdout)

    classes: dict[str, dict] = {}
    for name, cls in (parsed["classes"] or {}).items():
        raw_methods = cls.get("methods") or {}
        if isinstance(raw_methods, list):  # base R writes an empty named list as []
            raw_methods = {}
        methods = {}
        for method_name, method in raw_methods.items():
            # the thin wrapper delegates to the WithHttpInfo variant that holds the request details
            source = method
            if not source.get("path") and method.get("delegates_to"):
                source = raw_methods.get(method["delegates_to"], method)
            origin = None
            if source.get("path") and source.get("http_method"):
                key = f"{source['http_method'].upper()} {source['path']}"
                op = ops.get(key)
                origin = {"type": "operation", "endpoint": key,
                          "operation_id": op["operation_id"] if op else None,
                          "unstable": bool(op and op["unstable"])}
            methods[method_name] = {
                "params": [{"name": p["name"], "required": bool(p.get("required")),
                            "kind": "positional"} for p in method.get("params") or []],
                "origin": origin,
            }
        is_api = any(m.get("origin") for m in methods.values())
        classes[name] = {
            "kind": "api" if is_api else ("model" if name in schemas else "core"),
            "bases": ["R6Class"],
            "methods": methods,
            "fields": {field: {"name": field, "alias": field, "type": None, "required": False}
                       for field in (cls.get("fields") or [])},
            "enum_members": {},
            "origin": ({"type": "schema", "name": name, "unstable": schemas[name]["unstable"],
                        "orphan": schemas[name]["orphan"]} if name in schemas else None),
        }
    return {"classes": classes, "exports": sorted(set(parsed.get("exports") or []))}


# --------------------------------------------------------------------------- main

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("language", choices=["python", "r"])
    parser.add_argument("-o", "--output", required=True)
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--spec", help="defaults to the docs the language is generated from")
    parser.add_argument("--min-classes", type=int, default=MIN_CLASSES,
                        help="abort if fewer classes are found; guards against a broken extractor")
    args = parser.parse_args()

    root = os.path.abspath(args.repo_root)
    if args.language == "python":
        spec_path = args.spec or os.path.join(root, ".updater/api/api-docs-enums.json")
        package = os.path.join(root, "client-api_python/generated/PySirius")
        extra = [os.path.join(root, "client-api_python", name)
                 for name in ("pysirius_sdk.py", "pysirius_api.py", "pysirius_helper.py")]
        spec = load(spec_path)
        surface = extract_python(package, extra, spec)
    else:
        spec_path = args.spec or os.path.join(root, ".updater/api/api-docs-strings.json")
        package = os.path.join(root, "client-api_r/generated")
        extra = [os.path.join(root, "client-api_r", name)
                 for name in ("rsirius_sdk.R", "rsirius_helper.R")]
        spec = load(spec_path)
        surface = extract_r(package, extra, spec)

    if len(surface["classes"]) < args.min_classes:
        print(f"ERROR: only {len(surface['classes'])} classes extracted from {package}; the "
              f"extractor is probably broken. Refusing to write a snapshot that would look like a "
              f"mass removal.", file=sys.stderr)
        return 2

    version_file = os.path.join(root, ".updater/api/packageVersion.txt")
    package_version = (open(version_file).read().strip()
                       if os.path.exists(version_file) else None)
    snapshot = {
        "snapshot_version": SNAPSHOT_VERSION,
        "language": args.language,
        "meta": {
            "package_version": package_version,
            "api_version": (spec.get("info") or {}).get("version"),
            "generator_version": generator_version(root, args.language),
        },
        **surface,
    }
    with open(args.output, "w", encoding="utf-8") as handle:
        json.dump(snapshot, handle, indent=1, sort_keys=True)
        handle.write("\n")
    print(f"{args.output}: {len(surface['classes'])} classes, "
          f"{sum(len(c['methods']) for c in surface['classes'].values())} methods, "
          f"{len(surface['exports'])} exports")
    return 0


def generator_version(root: str, language: str) -> str | None:
    """the generator pin lives in the workflow; read it there so an upgrade shows up in the diff"""
    workflow = os.path.join(root, ".github/workflows/NewUpdate.yml")
    if not os.path.exists(workflow):
        return None
    jar = {"python": "openapi-generator-cli-7.16.jar", "r": "openapi-generator-cli-7.10.jar"}[language]
    for line in open(workflow, encoding="utf-8"):
        if jar in line and "openapi-generator-cli/" in line:
            return line.split("openapi-generator-cli/")[1].split("/")[0]
    return None


if __name__ == "__main__":
    sys.exit(main())
