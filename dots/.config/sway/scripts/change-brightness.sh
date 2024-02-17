#!/bin/bash

CURRENT_BRIGHTNESS=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')
DELTA=5
ACTION=$CURRENT_BRIGHTNESS

if [ "$1" = "+" ] && [ $(($CURRENT_BRIGHTNESS + $DELTA)) -le 100 ]; then
    ACTION=$(($CURRENT_BRIGHTNESS + $DELTA))
elif [ "$1" = "-" ] && [ $(($CURRENT_BRIGHTNESS - $DELTA)) -ge 5 ]; then
    ACTION=$(($CURRENT_BRIGHTNESS - $DELTA))
else
    exit 0
fi

echo $ACTION

swayosd-client --brightness ${ACTION}
