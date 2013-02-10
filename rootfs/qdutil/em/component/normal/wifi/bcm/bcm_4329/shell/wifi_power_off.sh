#!/bin/sh

#############################
#### Turn Off WiFi Power ####
#############################
echo "Turn Off Wi-Fi Power"
$1/core/sbin/s3c_wifi_cmd 2
