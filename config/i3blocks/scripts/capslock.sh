#!/bin/bash
STATUS="$(xset -q | grep Caps | awk '{print $4}')"
echo "$STATUS"
