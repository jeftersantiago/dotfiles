#!/bin/sh
# starting applications
xcompmgr &
dunst &
xfce4-panel &
mate-power-manager &
nitrogen --restore

# commands

xsetwacom set 20 MapToOutput eDP-1
xmodmap ~/.Xmodmap
xrdb ~/.Xresources &
xset b off &

# startup scripts
#screen.sh &
#setTabletScreen.sh &

# applets
nm-applet &
pa-applet &

blueman-applet &
# scripts
startup_apps.sh &
touchpad.sh &
