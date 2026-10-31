# ==============================================================================
# LBA — Logical Bash Aliases
# https://github.com/rockberpro-dev/bash-lba
#
# Install:
#   curl -sL https://raw.githubusercontent.com/rockberpro-dev/bash-lba/main/setup.sh | bash
#
# Manual install:
#   echo 'source ~/.config/bash-lba/bash-lba.sh' >> ~/.bashrc && source ~/.bashrc
# ==============================================================================

# --- NAVIGATION ---
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias bk='cd -'

# --- LISTING ---
alias ll='ls -la'
alias la='ls -A'
alias lt='ls -lAt'
alias lz='ls -lAS'

# --- FILE OPERATIONS ---
alias mk='mkdir'
alias mkp='mkdir -p'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cpr='cp -r'
alias rmr='rm -r'

# --- SYSTEM ---
alias cl='clear'
alias hi='history'
alias hig='history | grep'
alias rl='source ~/.bashrc'
alias psa='ps aux'
alias psg='ps aux | grep'

# --- NETWORK ---
alias pi='ping'
alias pic='ping -c 4'
alias sst='ss -tulpn'

# --- GREP ---
alias gr='grep'
alias gri='grep -i'
alias grr='grep -r'
alias grn='grep -n'
alias grv='grep -v'

# --- FILE SEARCH ---
alias fd='find . -name'
alias fdi='find . -iname'

# --- DISK ---
alias df='df -h'
alias du='du -h'
alias dul='du -sh *'
alias fr='free -h'

# --- PROCESS ---
alias kl='kill'
alias kl9='kill -9'
alias kla='killall'

# --- TEXT ---
alias ct='cat'
alias hd='head'
alias tl='tail'
alias tlf='tail -f'
alias tln='tail -n'

# --- ARCHIVE ---
alias tc='tar -czf'
alias tx='tar -xzf'
alias tv='tar -tzf'

# --- ENVIRONMENT ---
alias ev='env'
alias evg='env | grep'

# --- HELP ---
alias lba='"${XDG_CONFIG_HOME:-$HOME/.config}/bash-lba/bash-lba-help.sh"'
