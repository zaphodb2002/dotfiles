# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true
. "$HOME/.cargo/env"

export PATH=$PATH:/home/zaphod/.local/bin
export PATH=$PATH:/home/zaphod/.local/scripts
export PATH=$PATH:/home/zaphod/venv/bin
export EDITOR=nvim

## eza instead of ls
alias ls='eza -a --color=always'
alias lsp='eza -al --color=always'

## make less and grep handle colors
alias less='less -r'
alias grep='grep --color=auto'

## get the weather
alias weather='curl https://wttr.in/'

## TaskWarrior
alias gtd=~/.local/scripts/gtd.sh # The gtd report
alias progress=~/.local/scripts/recurring-progress-report.sh # call with the uuid of the parent recurring task
alias grade=~/.local/scripts/project-progress.sh # call with a project name

eval "$(starship init bash)"
