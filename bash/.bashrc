## PATH
export PATH=$PATH:/home/zaphod/.local/bin
export PATH=$PATH:/home/zaphod/.local/scripts
export PATH=$PATH:/home/zaphod/.config/taskmaster
export PATH=$PATH:/home/zaphod/venv/bin

## History
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

### ignore case with tab completion
if [ -t 1 ]; then
	bind "set completion-ignore-case on"
fi

## Defaults
export TERMINAL='alacritty'
export EDITOR='neovide'
export VISUAL='neovide'
export PAGER='most'

## Aliases
alias df='df -h'
alias du='du -h'

alias cal='task calendar'

# Neovide for nvim
#alias nvim='neovide'
alias nv='neovide'

#clear
alias clear="clear; seq 1 $(tput cols) | sort -R | sparklines | lolcat"

### zoxide instead of cd
alias cd='z'

### eza instead of ls
alias ls='eza --color=always'
alias lsp='eza -l --color=always'

### bat instead of cat
alias cat='bat'

### make less and grep handle colors
alias less='most'
alias grep='grep --color=always'

### get the weather
alias weather='curl https://wttr.in/'

### TaskWarrior
alias gtd=~/.config/taskmaster/scripts/gtd.sh # The gtd report
alias progress=~/.config/taskmaster/scripts/recurring-progress-report.sh # call with the uuid of the parent recurring task
alias grade=~/.config/taskmaster/scripts/project-progress.sh # call with a project name

### Pomodoro timers
alias startpom='~/.local/scripts/startpom.sh'
alias startbreak='~/.local/scripts/startbreak.sh'

### LMS
alias lms='nvim "$HOME/Documents/Life Management System/README.md"'

#arcolinux applications
#att is a symbolic link now
#alias att="archlinux-tweak-tool"
#alias adt="arcolinux-desktop-trasher"
#alias abl="arcolinux-betterlockscreen"
#alias agm="arcolinux-get-mirrors"
#alias amr="arcolinux-mirrorlist-rank-info"
#alias aom="arcolinux-osbeck-as-mirror"
#alias ars="arcolinux-reflector-simple"
#alias atm="arcolinux-tellme"
#alias avs="arcolinux-vbox-share"
#alias awa="arcolinux-welcome-app"


## some fun on new terminal
## exec 'seq 1 $(tput cols) | sort -R | sparklines | lolcat'
rxfetch
#cal

## zoxide
eval "$(zoxide init bash)"
## Starship prompt
eval "$(starship init bash)"
