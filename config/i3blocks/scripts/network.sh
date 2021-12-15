#!/bin/bash
CONNECTION=$(nmcli d | grep -w connected | awk '{print $4}')

if [ -z $CONNECTION ]
then
    echo "offline"
else
    echo "$CONNECTION"
fi
