#!/bin/sh

############################
#### Turn On WiFi Power ####
############################
echo "Turn On Wi-Fi Power"
$1/core/sbin/s3c_wifi_cmd 1
