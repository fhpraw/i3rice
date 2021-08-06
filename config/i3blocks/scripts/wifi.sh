#!/bin/bash

ICON_CONNECT=""
ICON_DISCONNECT=""

CONNECTION=$(nmcli d | grep -w connected | awk '{print $4}')

if [ -z $CONNECTION ]
then
    echo " $ICON_DISCONNECT "
else
    echo -e "$ICON_CONNECT $CONNECTION"
fi
