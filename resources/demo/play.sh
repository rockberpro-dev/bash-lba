#!/bin/bash
# Types and runs each line of script.txt, as if typed live.
HERE="$(cd "$(dirname "$0")" && pwd)"
shopt -s expand_aliases
source "$LBA_FILE" 2>/dev/null
cd "$SANDBOX" || exit 1
sleep 0.8
while IFS= read -r line || [ -n "$line" ]; do
  [ -z "$line" ] && continue
  if [[ "$line" == \#* ]]; then
    printf '\033[90m%s\033[0m\n' "$line"
    sleep 0.6
    continue
  fi
  printf '\033[32m$ \033[0m'
  for ((i = 0; i < ${#line}; i++)); do
    printf '%s' "${line:i:1}"
    sleep 0.07
  done
  printf '\n'
  eval "$line"
  sleep 1.2
done < "$HERE/script.txt"
sleep 2
