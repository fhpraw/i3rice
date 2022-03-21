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
