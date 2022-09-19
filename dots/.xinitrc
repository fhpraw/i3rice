[ -f ~/.xprofile ] && . ~/.xprofile

# set wallpaper
xwallpaper --zoom ~/.config/wallpaper.jpg

# start network manager applet
nm-applet &

# start blueman applet
blueman-applet &

# start i3wm
exec i3
