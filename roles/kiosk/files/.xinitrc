#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# razporedi okna po ekranu
sleep 10 && ./workspace & 
# unclutter -idle 0 -root &

# ozadje belo
xsetroot -solid whitesmoke

# zalaufaj keyboard in chromium
matchbox-keyboard &
exec chromium-browser --kiosk --disable-javascript https://www.m.me/gorenje.SLO
