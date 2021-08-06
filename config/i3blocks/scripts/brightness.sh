#!/bin/bash
ICON=""
BRIGHTNESS="$(xbacklight -get | awk '{print int($1)}')"
echo " $ICON $BRIGHTNESS "
