#!/bin/sh

##############################
#### Get Rx Packet Status ####
##############################
echo "Wi-Fi: Get Rx Packet Status"
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm counters > $1result.txt
sleep 1
