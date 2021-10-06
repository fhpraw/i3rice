#!/bin/bash
MUTE_STAT=$(pulsemixer --list-sources | grep 'Default' | awk -F ', ' '{print $3}' | awk '{print $2}')

if [ $MUTE_STAT -eq 1 ]
    then echo "mute"
    else echo "on"
fi
