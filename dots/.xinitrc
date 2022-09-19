[ -f ~/.xprofile ] && . ~/.xprofile

# set wallpaper
xwallpaper --zoom ~/.config/wallpaper.jpg

# start nm-applet
nm-applet &

# start i3wm
exec i3
