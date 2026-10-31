# Install Guide

Details that the [README](README.md) leaves out: what the setup script does, how to install by hand, and how to remove everything.

## What the setup script does

The script makes two changes:

1. It copies `bash-lba.sh` and `bash-lba-help.sh` to `~/.config/bash-lba/` (or `$XDG_CONFIG_HOME/bash-lba/`).
2. It adds a single `source` line to `~/.bashrc`.

Older versions put the files directly in `~/`. Run the script again to upgrade that install: it removes the old files and the old source line.

Read the source before you run it: [setup.sh](setup.sh).

## Manual install

```bash
mkdir -p ~/.config/bash-lba

curl -sL https://raw.githubusercontent.com/rockberpro-dev/bash-lba/main/bash-lba.sh \
  -o ~/.config/bash-lba/bash-lba.sh

curl -sL https://raw.githubusercontent.com/rockberpro-dev/bash-lba/main/bash-lba-help.sh \
  -o ~/.config/bash-lba/bash-lba-help.sh && chmod +x ~/.config/bash-lba/bash-lba-help.sh

echo 'source ~/.config/bash-lba/bash-lba.sh' >> ~/.bashrc
source ~/.bashrc
```

## Uninstall

```bash
# Remove the source line from .bashrc
sed -i '/\/bash-lba\/bash-lba\.sh/d' ~/.bashrc

# Remove the files
rm -r ~/.config/bash-lba
```

## Files

[setup.sh](setup.sh) · [setup-local.sh](setup-local.sh) · [bash-lba.sh](bash-lba.sh) · [bash-lba-help.sh](bash-lba-help.sh)
