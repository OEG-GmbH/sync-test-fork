#!/bin/sh
# Checks that the fork patch marker survives every upstream merge.
set -eu
cd "$(dirname "$0")/.."
grep -q 'fork-patch: keep' plug/hooks/a.ts || { echo "fork-guard: patch marker missing" >&2; exit 1; }
echo "fork-guard: marker present"
