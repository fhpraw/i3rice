[ -f ~/.xprofile ] && . ~/.xprofile

# set wallpaper
xwallpaper --zoom ~/.config/wallpaper.jpg

# network manager applet
nm-applet &

# bluetooth manager applet
blueman-applet &

# start i3wm
exec i3
