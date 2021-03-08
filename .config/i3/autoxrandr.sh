#!/usr/bin/env bash

mon_list=$(xrandr --query | grep " connected" | cut -d" " -f1)
length=$(wc -w <<< "$mon_list")

if [[ $length -eq 1 ]]; then 
    xrandr --output "$(echo "$mon_list" | sed -n 1p)"
elif [[ $length -gt 1 ]]; then
    xrandr --output "$(echo "$mon_list" | sed -n 2p)" --output "$(echo "$mon_list" | sed -n 1p)" --right-of "$(echo "$mon_list" | sed -n 2p)"
fi