[ -f ~/.xprofile ] && . ~/.xprofile

# set wallpaper
xwallpaper --zoom ~/.config/wallpaper.jpg

# start i3wm
exec i3
