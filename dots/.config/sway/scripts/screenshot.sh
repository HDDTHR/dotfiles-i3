#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')
 
case $selected in
  active)
    /usr/share/swayfx/scripts/grimshot --notify save active;;
  screen)
    /usr/share/swayfx/scripts/grimshot --notify save screen;;
  output)
    /usr/share/swayfx/scripts/grimshot --notify save output;;
  area)
    /usr/share/swayfx/scripts/grimshot --notify save area;;
  window)
    /usr/share/swayfx/scripts/grimshot --notify save window;;
esac
