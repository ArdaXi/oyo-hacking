#!/bin/sh

###########################################
#### Bring Down Network Interface eth0 ####
###########################################
echo "Wi-Fi: Bring Down Network Interface wlan0"
ifconfig wlan0 down
