#!/bin/sh
id=$( xinput list | grep "Pen Pen" | awk '{print $8}' | sed 's/[^[:digit:]]/ /g; s/ */ /; s/^ *//')

case $1 in
        1) xsetwacom set $id MapToOutput eDP-1;;
        2) xsetwacom set $id MapToOutput HDMI-1;;
esac
