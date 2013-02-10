#!/bin/sh

############################
#### Turn On WiFi Power ####
############################
echo "Wi-Fi: Turn On Wi-Fi Power"
mount -o remount,rw, auto /
$1/core/sbin/s3c_wifi_cmd 1
