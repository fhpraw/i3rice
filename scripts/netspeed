#!/bin/bash
device=$(nmcli d | grep -w "connected" | sed -n 1p | awk '{print $1}')
t1=$(sed -n 1p /sys/class/net/$device/statistics/tx_bytes)
r1=$(sed -n 1p /sys/class/net/$device/statistics/rx_bytes)
sleep 0.5
t2=$(sed -n 1p /sys/class/net/$device/statistics/tx_bytes)
r2=$(sed -n 1p /sys/class/net/$device/statistics/rx_bytes)
upload_speed=$(( ($t2 - $t1) / 1024 ))
download_speed=$(( ($r2 - $r1) / 1024 ))
echo "  $upload_speed KBps  $download_speed KBps "
