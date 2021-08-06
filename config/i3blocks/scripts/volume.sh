#!/bin/bash

ICON_MUTE="婢"
ICON_UNMUTE="墳"
MUTE_STAT=$(pulsemixer --get-mute)
GET_VOLUME=$(pulsemixer --get-volume | awk '{print $1}')

if [ $MUTE_STAT -eq 1 ]
    then echo " $ICON_MUTE "
    else echo " $ICON_UNMUTE $GET_VOLUME "
fi
