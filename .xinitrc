#!/bin/sh
export PATH="/usr/local/bin/mrblocks-scripts:/usr/local/bin/mrpanel-genmon-scripts:/usr/local/bin/system-scripts:$PATH"

~/.fehbg &
picom --daemon &
conky -c ~/.config/conky/Auva-Light/Auva-Light.conf &
conky -c ~/.config/conky/Auva-Light/Auva-Light2.conf &
exec dbus-run-session sh -c '
    dwmblocks >/dev/null 2>&1 &
    sleep 1 && xfce4-panel --disable-wm-check &
    while :; do ssh-agent dwm; done
'
