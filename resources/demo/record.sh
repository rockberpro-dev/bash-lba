#!/bin/bash
# Regenerates resources/img/demo.svg from script.txt.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"
RUNNER=$(command -v bunx || echo "npx -y")
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

SANDBOX="$(dirname "$ROOT")/$(basename "$ROOT")-demo"
rm -rf "$SANDBOX"; mkdir -p "$SANDBOX"

export SANDBOX LBA_FILE="$ROOT/bash-lba.sh"
export PS1='$ ' HOME="$TMP/home" LC_ALL=C.UTF-8 LANGUAGE=en_US:en
mkdir -p "$HOME"

asciinema rec --overwrite -q -i 1 --cols 80 --rows 18 -c "bash $HERE/play.sh" "$TMP/demo.cast"
sed -i "s#$SANDBOX#~/demo#g; s#$ROOT#~/bash-lba#g" "$TMP/demo.cast"
mkdir -p "$ROOT/resources/img"
(cd "$TMP" && $RUNNER svg-term-cli --in demo.cast --out "$ROOT/resources/img/demo.svg" --window --no-cursor --padding 10)
rm -rf "$SANDBOX"
