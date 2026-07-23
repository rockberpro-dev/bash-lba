#!/bin/bash

set -e

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

INSTALL_PATH="$HOME/.bash-lba.sh"
HELP_PATH="$HOME/.bash-lba-help.sh"

cp "$SRC_DIR/bash-lba.sh" "$INSTALL_PATH"

BASHRC="${BASHRC:-$HOME/.bashrc}"

if ! grep -qF "source $INSTALL_PATH" "$BASHRC" 2>/dev/null; then
    echo "" >> "$BASHRC"
    echo "source $INSTALL_PATH" >> "$BASHRC"
fi

cp "$SRC_DIR/bash-lba-help.sh" "$HELP_PATH"
chmod +x "$HELP_PATH"

echo "bash-lba installed: $INSTALL_PATH"
echo "bash-lba help installed: $HELP_PATH"
echo "Run 'source ~/.bashrc' or open a new terminal to activate."
