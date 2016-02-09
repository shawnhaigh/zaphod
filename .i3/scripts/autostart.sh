#!/bin/bash

# Startup programs
#
i3-msg '
exec --no-startup-id .i3/scripts/get-random-wallpaper.sh;
exec --no-startup-id /usr/bin/compton -b;
exec --no-startup-id nm-applet
'

# Layouts
#
i3-msg '
workspace ;
append_layout .i3/workspace-1.1.json; 
exec sleep 1 && urxvt -name main;
exec sleep 1 && urxvt -name clock -e tty-clock -c;
exec sleep 1 && urxvt -name matrix -e cmatrix -a;
exec sleep 1 && urxvt -name slurm -e slurm -i eth0;
exec sleep 1 && urxvt -name load -e ttyload
'

# Listeners
#
# 
while true; do
    inotifywait /home/$USER/.config/pulse
    pkill -RTMIN+10 i3blocks
done
