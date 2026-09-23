"""Regenerate the "Repository structure" section at the end of README.md.

The tree is built from the files git tracks, so local clutter never shows up. Directories full of
generated code are collapsed to a single line.

Usage: python3 .updater/tools/update_repo_structure.py [--check]
"""
import argparse
import html
import subprocess
import sys
from pathlib import Path
from urllib.parse import quote

ROOT = Path(__file__).resolve().parents[2]
README = ROOT / "README.md"
START = "<!-- repo-structure:start -->"
END = "<!-- repo-structure:end -->"
MAX_DEPTH = 3

# shown as a single line, their content is generated or bulky
COLLAPSE = {
    "client-api_python/generated",
    "client-api_python/templates",
    "client-api_r/generated",
    "client-api_r/templates",
    ".updater/clientTests/Data/MSV000084072",
}


def tracked_files():
    out = subprocess.run(["git", "ls-files"], cwd=ROOT, check=True, capture_output=True, text=True)
    return [p for p in out.stdout.splitlines() if p]


def build_tree(files):
    tree = {}
    for f in files:
        node = tree
        parts = f.split("/")
        for i, part in enumerate(parts):
            if "/".join(parts[: i + 1]) in COLLAPSE:
                node.setdefault(part, {})
                break
            node = node.setdefault(part, {} if i < len(parts) - 1 else None)
            if node is None:
                break
    return tree


def render(node, prefix="", path="", depth=1):
    lines = []
    # directories first, then files, each alphabetically
    items = sorted(node.items(), key=lambda kv: (kv[1] is None, kv[0].lower()))
    for i, (name, child) in enumerate(items):
        full = f"{path}{name}"
        last = i == len(items) - 1
        label = html.escape(name + ("/" if child is not None else ""))
        link = f'<a href="{quote(full)}">{label}</a>'
        lines.append(f"{prefix}{'└── ' if last else '├── '}{link}")
        if child and depth < MAX_DEPTH and full not in COLLAPSE:
            lines += render(child, prefix + ("    " if last else "│   "), full + "/", depth + 1)
    return lines


def section(files):
    body = "\n".join(render(build_tree(files)))
    return (
        f"{START}\n"
        "## Repository structure\n\n"
        # <pre> instead of a code block, GitHub renders links only there
        f"<pre>\n.\n{body}\n</pre>\n{END}\n"
    )


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--check", action="store_true", help="exit 1 if README.md is out of date")
    args = ap.parse_args()

    text = README.read_text(encoding="utf-8")
    new_section = section(tracked_files())
    if START in text and END in text:
        head, rest = text.split(START, 1)
        tail = rest.split(END, 1)[1].lstrip("\n")
        new = head + new_section + tail
    else:
        new = text.rstrip("\n") + "\n\n" + new_section

    if new == text:
        print("README.md repository structure is up to date")
        return 0
    if args.check:
        print("README.md repository structure is out of date")
        return 1
    README.write_text(new, encoding="utf-8", newline="\n")
    print("README.md repository structure updated")
    return 0


if __name__ == "__main__":
    sys.exit(main())
