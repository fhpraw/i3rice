#!/bin/bash

ICON=""
STATUS="$(xset -q | grep Caps | awk '{print toupper($4)}')"
echo " $ICON $STATUS "
