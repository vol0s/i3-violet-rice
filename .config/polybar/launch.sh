#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar depending on screens number and their resolutions.

mon_list=$(xrandr --query | grep " connected" | cut -d" " -f1)
res_list=$(xrandr | sed -E -n '/connected/s/.* ([0-9]+x[0-9]+)\+.*/\1/p')

length=$(wc -w <<< "$mon_list")

if type "xrandr"; then
    for i in $(seq 1 "$length"); do 
        if [[ $(echo "$res_list" | sed -n "$i"p) == *"1360"* ]]; then
            MONITOR="$(echo "$mon_list" | sed -n "$i"p)" polybar --reload -q main -c "$DIR/smallscreen.ini" &
        elif [[ $(echo "$res_list" | sed -n "$i"p) == *"2560"* ]]; then
            MONITOR="$(echo "$mon_list" | sed -n "$i"p)" polybar --reload -q main -c "$DIR/config.ini" &
        fi
    done
else
    polybar --reload -q main -c "$DIR/config.ini" &
fi