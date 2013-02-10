#!/bin/sh

############################
#### Turn On WiFi Power ####
############################
echo "Turn On Wi-Fi Power"
$1../coreLib/sbin/s3c_wifi_cmd 1
