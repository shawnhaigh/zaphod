#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $HOME/.i3/assets/lock-icon.png ]] && convert /tmp/screen.png $HOME/.i3/assets/lock-icon.png -gravity center -composite -matte /tmp/screen.png
i3lock -i /tmp/screen.png
