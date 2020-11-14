#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# execute startx after login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
