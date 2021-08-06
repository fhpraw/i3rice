#!/bin/bash

ICON_MUTE=""
ICON_UNMUTE=""
MUTE_STAT=$(pulsemixer --list-sources | grep 'Default' | awk -F ', ' '{print $3}' | awk '{print $2}')

if [ $MUTE_STAT -eq 1 ]
    then echo " $ICON_MUTE "
    else echo " $ICON_UNMUTE "
fi
