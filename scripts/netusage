#!/bin/bash
device=$(nmcli d | grep -w "connected" | sed -n 1p | awk '{print $1}')
upload=$(sed -n 1p /sys/class/net/$device/statistics/tx_bytes)
download=$(sed -n 1p /sys/class/net/$device/statistics/rx_bytes)
upload=$(( $upload / 1000000 ))
download=$(( $download / 1000000 ))
echo "  $upload MB  $download MB "
