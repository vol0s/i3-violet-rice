#!/usr/bin/env bash

mon_list=$(xrandr --query | grep " connected" | cut -d" " -f1)
length=$(wc -w <<< "$mon_list")

if [[ $length -eq 1 ]]; then 
    xrandr --output "$(echo "$mon_list" | sed -n 1p)" --mode 2560x1440 --rate 164.85 --primary
elif [[ $length -eq 2 ]]; then
    xrandr --output "$(echo "$mon_list" | sed -n 2p)" --mode 2560x1440 --rate 164.85 --primary --output "$(echo "$mon_list" | sed -n 1p)" --right-of "$(echo "$mon_list" | sed -n 2p)"
fi