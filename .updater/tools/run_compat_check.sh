#!/usr/bin/env bash
# Run the same backward-compatibility check the update pipeline runs, locally.
#
# Baseline: the committed state (git HEAD). New: the working tree. So this is only meaningful after
# regenerating the clients, or when hand-editing the generated code or the SDK templates.
#
# Usage: .updater/tools/run_compat_check.sh [OUTDIR]      (default OUTDIR: build/compat)
#        --write   also update the committed snapshots in .updater/api/
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
out="build/compat"
write=0
for arg in "$@"; do
  case "$arg" in
    --write) write=1 ;;
    *) out="$arg" ;;
  esac
done
cd "$root"
mkdir -p "$out"

for f in api-docs-strings.json api-docs-enums.json sdk-surface-python.json sdk-surface-r.json; do
  git show "HEAD:.updater/api/$f" > "$out/old-$f" 2>/dev/null || : > "$out/old-$f"
done

if [ "$write" = 1 ]; then
  py_out=".updater/api/sdk-surface-python.json"
  r_out=".updater/api/sdk-surface-r.json"
else
  py_out="$out/sdk-surface-python.json"
  r_out="$out/sdk-surface-r.json"
fi

if [ -s "$out/old-api-docs-strings.json" ]; then
  python3 .updater/tools/api_compat_check.py "$out/old-api-docs-strings.json" \
    .updater/api/api-docs-strings.json --report-only --label "R / strings" \
    --json "$out/spec-r.json" > "$out/spec-r.txt"
fi
if [ -s "$out/old-api-docs-enums.json" ]; then
  python3 .updater/tools/api_compat_check.py "$out/old-api-docs-enums.json" \
    .updater/api/api-docs-enums.json --report-only --label "Python / enums" \
    --json "$out/spec-python.json" > "$out/spec-python.txt"
fi

python3 .updater/tools/sdk_symbols.py python -o "$py_out"
python3 .updater/tools/sdk_symbols.py r      -o "$r_out"

python3 .updater/tools/sdk_compat_check.py "$out/old-sdk-surface-python.json" "$py_out" \
  --report-only --json "$out/sdk-python.json" | tee "$out/sdk-python.txt"
python3 .updater/tools/sdk_compat_check.py "$out/old-sdk-surface-r.json" "$r_out" \
  --report-only --json "$out/sdk-r.json" | tee "$out/sdk-r.txt"

python3 .updater/tools/render_compat_report.py -o "$out/compat-report.md" \
  "$out/spec-r.json" "$out/spec-python.json" "$out/sdk-python.json" "$out/sdk-r.json" \
  --intro "Local run against git HEAD."

echo
echo "report: $out/compat-report.md"
