userresources=$HOME/.Xresources usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
XDG_SESSION_TYPE=x11
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec gnome-session

