# Changelog

## [Unreleased]

### Added

- 12 new aliases: `cp`, `mv` (interactive), `rmr`, `hig`, `rl`, `pic`, `sst`, `grn`, `grv`, `fr`, `kla`, `tln`
- New Archive group: `tc`, `tx`, `tv`

### Changed

- Files now install to `~/.config/bash-lba/` (or `$XDG_CONFIG_HOME/bash-lba/`) instead of directly in `~/`. Re-running the setup script migrates an older install: it removes `~/.bash-lba.sh`, `~/.bash-lba-help.sh` and the old source line in `~/.bashrc`

## [0.1.0] - 2026-04-16

### Added

- Initial release as **LBA — Logical Bash Aliases**
- `bash-lba.sh` with aliases across 10 groups: Navigation, Listing, File Operations, System, Network, Grep, File Search, Disk, Process, Text, Environment
- `lba` built-in alias to display all aliases in a formatted table
- `bash-lba-help.sh` help script with box-drawing characters and ANSI colors
- `setup.sh` one-line installer that adds a `source` entry to `.bashrc`
- README with alias reference table and install instructions
