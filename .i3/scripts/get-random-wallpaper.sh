#!/bin/bash

FOLDER=/home/shawn/Pictures/wallpaper/random/


while true
do
	feh --bg-fill $(find $FOLDER -type f | shuf -n 1)
	sleep 20m
done
