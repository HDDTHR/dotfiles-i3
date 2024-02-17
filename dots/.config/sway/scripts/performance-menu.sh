#!/bin/bash

entries="Performance Balanced Power-Saver"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/config.performance --style=$HOME/.config/wofi/style.widgets.css | awk '{print tolower($1)}')

case $selected in
  performance)
    exec powerprofilesctl set performance;;
  balanced)
    exec powerprofilesctl set balanced;;
  power-saver)
    exec powerprofilesctl set power-saver;;
esac
