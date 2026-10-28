#!/bin/bash

set -e

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/bash-lba"

INSTALL_PATH="$CONFIG_DIR/bash-lba.sh"
HELP_PATH="$CONFIG_DIR/bash-lba-help.sh"

BASHRC="${BASHRC:-$HOME/.bashrc}"

# Remove files from older versions, which installed directly into ~
rm -f "$HOME/.bash-lba.sh" "$HOME/.bash-lba-help.sh"
if [ -f "$BASHRC" ] && grep -qF '/.bash-lba.sh' "$BASHRC"; then
    grep -vF '/.bash-lba.sh' "$BASHRC" > "$BASHRC.bash-lba.tmp" || true
    cat "$BASHRC.bash-lba.tmp" > "$BASHRC"
    rm -f "$BASHRC.bash-lba.tmp"
fi

mkdir -p "$CONFIG_DIR"

curl -sL "https://raw.githubusercontent.com/rockberpro/bash-lba/main/bash-lba.sh" -o "$INSTALL_PATH"

if ! grep -qF "source \"$INSTALL_PATH\"" "$BASHRC" 2>/dev/null; then
    echo "" >> "$BASHRC"
    echo "source \"$INSTALL_PATH\"" >> "$BASHRC"
fi

curl -sL "https://raw.githubusercontent.com/rockberpro/bash-lba/main/bash-lba-help.sh" -o "$HELP_PATH"
chmod +x "$HELP_PATH"

echo "bash-lba installed: $INSTALL_PATH"
echo "bash-lba help installed: $HELP_PATH"
echo "Run 'source ~/.bashrc' or open a new terminal to activate."
