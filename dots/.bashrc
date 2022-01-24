#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export VISUAL=nvim
export PATH=$HOME/.scripts:$PATH

alias c3='nvim ~/.config/{i3/config,i3blocks/config}'
alias cb='nvim ~/.bashrc ~/.bash_profile'
alias ck='nvim ~/.config/kitty/kitty.conf'
alias ls='ls --color=auto'
