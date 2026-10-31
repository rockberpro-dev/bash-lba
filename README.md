<p align="center">
  <img src="resources/img/logo.png" alt="bash-lba" width="200">
</p>

<h1 align="center">Logical Bash Aliases</h1>

<p align="center">A curated set of short, memorable bash aliases organized by category.</p>

## Install

```bash
curl -sL https://raw.githubusercontent.com/rockberpro-dev/bash-lba/main/setup.sh | bash
```

Then reload your shell:

```bash
source ~/.bashrc
```

The script copies the files to `~/.config/bash-lba/` and adds a `source` line to `~/.bashrc`.

Manual install, upgrade and uninstall: [GUIDE.md](GUIDE.md).

## How It Reads

Two-letter **prefix** picks the command. One-letter **suffix** is the first letter of the flag or variant.

```
..    → cd ..              ll    → ls -la
...   → cd ../..           la    → ls -A
....  → cd ../../..        lt    → ls -lAt   (sort by time)
bk    → cd -               lz    → ls -lAS   (sort by size)

gr    → grep               fd    → find . -name
gri   → grep -i            fdi   → find . -iname
grr   → grep -r

ct    → cat                df    → df -h
hd    → head               du    → du -h
tl    → tail               dul   → du -sh *
tlf   → tail -f
```

Run `lba` to see every alias right in your terminal:

```
╔═════════════════════════════════════════════════╗
║               Bash Aliases                      ║
╠═════════════════════════════════════════════════╣
║ ── Navigation ──                                ║
║ ..     │ cd ..                                  ║
║ ...    │ cd ../..                               ║
║ ....   │ cd ../../..                            ║
║ bk     │ cd -                                   ║
║ ── Listing ──                                   ║
║ ll     │ ls -la                                 ║
║ la     │ ls -A                                  ║
║ lt     │ ls -lAt                                ║
║ lz     │ ls -lAS                                ║
║         ...                                     ║
╚═════════════════════════════════════════════════╝
  49 aliases across 13 groups
```

## Alias Reference

| Alias  | Command              | Group          |
| ------ | -------------------- | -------------- |
| `..`   | `cd ..`              | Navigation     |
| `...`  | `cd ../..`           | Navigation     |
| `....` | `cd ../../..`        | Navigation     |
| `bk`   | `cd -`               | Navigation     |
| `ll`   | `ls -la`             | Listing        |
| `la`   | `ls -A`              | Listing        |
| `lt`   | `ls -lAt`            | Listing        |
| `lz`   | `ls -lAS`            | Listing        |
| `mk`   | `mkdir`              | File Ops       |
| `mkp`  | `mkdir -p`           | File Ops       |
| `rm`   | `rm -i`              | File Ops       |
| `cp`   | `cp -i`              | File Ops       |
| `mv`   | `mv -i`              | File Ops       |
| `cpr`  | `cp -r`              | File Ops       |
| `rmr`  | `rm -r`              | File Ops       |
| `cl`   | `clear`              | System         |
| `hi`   | `history`            | System         |
| `hig`  | `history \| grep`    | System         |
| `rl`   | `source ~/.bashrc`   | System         |
| `psa`  | `ps aux`             | System         |
| `psg`  | `ps aux \| grep`     | System         |
| `pi`   | `ping`               | Network        |
| `pic`  | `ping -c 4`          | Network        |
| `sst`  | `ss -tulpn`          | Network        |
| `gr`   | `grep`               | Grep           |
| `gri`  | `grep -i`            | Grep           |
| `grr`  | `grep -r`            | Grep           |
| `grn`  | `grep -n`            | Grep           |
| `grv`  | `grep -v`            | Grep           |
| `fd`   | `find . -name`       | File Search    |
| `fdi`  | `find . -iname`      | File Search    |
| `df`   | `df -h`              | Disk           |
| `du`   | `du -h`              | Disk           |
| `dul`  | `du -sh *`           | Disk           |
| `fr`   | `free -h`            | Disk           |
| `kl`   | `kill`               | Process        |
| `kl9`  | `kill -9`            | Process        |
| `kla`  | `killall`            | Process        |
| `ct`   | `cat`                | Text           |
| `hd`   | `head`               | Text           |
| `tl`   | `tail`               | Text           |
| `tlf`  | `tail -f`            | Text           |
| `tln`  | `tail -n`            | Text           |
| `tc`   | `tar -czf`           | Archive        |
| `tx`   | `tar -xzf`           | Archive        |
| `tv`   | `tar -tzf`           | Archive        |
| `ev`   | `env`                | Environment    |
| `evg`  | `env \| grep`        | Environment    |
| `lba`  | show alias table     | Help           |

---

[GUIDE.md](GUIDE.md) · [CHANGELOG.md](CHANGELOG.md) · [setup.sh](setup.sh) · [bash-lba.sh](bash-lba.sh) · [bash-lba-help.sh](bash-lba-help.sh)
