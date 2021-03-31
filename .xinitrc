#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
XDG_SESSION_TYPE=x11
<<<<<<< HEAD
autostart
exec openbox
=======
autostart &
exec openbox-session
>>>>>>> 966ac7e729d3a303c9560a94b9ca524ecf072b34
