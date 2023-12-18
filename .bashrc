## PATH
export PATH=$PATH:/home/zaphod/.local/bin
export PATH=$PATH:/home/zaphod/.local/scripts
export PATH=$PATH:/home/zaphod/venv/bin

## History
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

### ignore case with tab completion
bind "set completion-ignore-case on"

## Defaults
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='most'

## Aliases
alias df='df -h'
alias du='du -h'

alias cal='task calendar'

#clear
alias clear="clear; seq 1 $(tput cols) | sort -R | sparklines | lolcat"

### zoxide instead of cd
alias cd='z'

### eza instead of ls
alias ls='eza -a --color=always'
alias lsp='eza -al --color=always'

### bat instead of cat
alias cat='bat'

### make less and grep handle colors
alias less='most'
alias grep='grep --color=always'

### get the weather
alias weather='curl https://wttr.in/'

### TaskWarrior
alias gtd=~/.local/scripts/gtd.sh # The gtd report
alias progress=~/.local/scripts/recurring-progress-report.sh # call with the uuid of the parent recurring task
alias grade=~/.local/scripts/project-progress.sh # call with a project name

### Pomodoro timers
alias startpom='termdown 25m -c 60 -bsv --font=banner3'
alias startbreak='termdown 5m -c 60 -bsv --font=banner3'

### LMS
alias lms='nvim "$HOME/Documents/Life Management System/README.md"'

#arcolinux applications
#att is a symbolic link now
#alias att="archlinux-tweak-tool"
alias adt="arcolinux-desktop-trasher"
alias abl="arcolinux-betterlockscreen"
alias agm="arcolinux-get-mirrors"
alias amr="arcolinux-mirrorlist-rank-info"
alias aom="arcolinux-osbeck-as-mirror"
alias ars="arcolinux-reflector-simple"
alias atm="arcolinux-tellme"
alias avs="arcolinux-vbox-share"
alias awa="arcolinux-welcome-app"


## some fun on new terminal
## exec 'seq 1 $(tput cols) | sort -R | sparklines | lolcat'
rxfetch
cal

## zoxide
eval "$(zoxide init bash)"
## Starship prompt
eval "$(starship init bash)"
