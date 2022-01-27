#!/bin/bash
CON=$(nmcli d | grep -w "connected" | head -n 1 | awk '{for(i=4;i<=NF;++i)printf $i""FS; print ""}')
if [ -z $CON ]
then
    echo "   offline "
else
    echo "  $CON"
fi
