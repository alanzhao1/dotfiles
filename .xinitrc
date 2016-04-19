#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Use .Xresources files

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Set background image
sh /home/alan/.fehbg &

# Start xbindkeys
xbindkeys

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec i3

