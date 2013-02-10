#!/bin/sh

#############################
#### Turn Off WiFi Power ####
#############################
echo "Turn Off Wi-Fi Power"
$1../coreLib/sbin/s3c_wifi_cmd 2
