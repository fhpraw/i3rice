#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export RANGER_LOAD_DEFAULT_RC=FALSE
export VISUAL=nvim

alias c3='nvim ~/.config/{i3/config,i3blocks/config}'
alias cb='nvim ~/.bashrc ~/.bash_profile'
alias ck='nvim ~/.config/kitty/kitty.conf'
alias ls='ls --color=auto'
alias nt='nmtui'
alias pls='pulsemixer'
alias rg='ranger'
alias a70='nmcli con up a70'
alias upd='sudo pacman -Syu'
alias wst='sudo /opt/lampp/lampp start'
alias wsp='sudo /opt/lampp/lampp stop'
alias htd='cd /opt/lampp/htdocs'

# colorize man page using less
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
