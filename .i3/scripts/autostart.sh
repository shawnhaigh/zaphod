#!/bin/bash


i3-msg 'workspace 1; append_layout .i3/workspace-1.1.json'
i3-msg 'workspace 1; 
exec sleep 1 && urxvt -name main;
exec sleep 1 && urxvt -name clock -e tty-clock -c;
exec sleep 1 && urxvt -name matrix -e cmatrix -a;
exec sleep 1 && urxvt -name slurm -e slurm -i eth0;
exec sleep 1 && urxvt -name load -e ttyload
'
