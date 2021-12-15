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
export RANGER_LOAD_DEFAULT_RC=FALSE

# aliases
alias ls='ls --color=auto'
alias i3c='nvim ~/.config/{i3/config,i3blocks/config}'
alias wifioff='nmcli radio wifi off'
alias wifion='nmcli radio wifi on'
alias bluetoff='sudo bluetooth off'
alias blueton='sudo bluetooth on'
alias upd='sudo pacman -Syu'
