#!/usr/bin/env bash

class=$(playerctl metadata --player=spotify --format '{{lc(status)}}')
icon=""

if [[ $class == "playing" ]]; then
  info=$(playerctl metadata --player=spotify --format '{{artist}} - {{title}}')
  if [[ ${#info} -gt 40 ]]; then
    info=$(echo "$info" | cut -c1-40)"..."
  fi
  text=$icon" "$info
else
  text=$icon
fi

echo $text