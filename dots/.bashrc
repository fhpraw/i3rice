#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# vi keybinding
set -o vi

# exports
export EDITOR=nvim
export VISUAL=nvim

# aliases
alias ls='ls --color=auto'
alias c3='nvim ~/.config/{i3/config,i3blocks/config}'
alias ck='nvim ~/.config/kitty/kitty.conf'
alias cb='nvim ~/.bashrc ~/.bash_profile'
alias upd='sudo pacman -Syu'

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
