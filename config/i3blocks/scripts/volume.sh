#!/bin/bash
MUTE_STAT=$(pulsemixer --get-mute)
GET_VOLUME=$(pulsemixer --get-volume | awk '{print $1}')

if [ $MUTE_STAT -eq 1 ]
    then echo "  muted"
    else echo "  $GET_VOLUME% "
fi
