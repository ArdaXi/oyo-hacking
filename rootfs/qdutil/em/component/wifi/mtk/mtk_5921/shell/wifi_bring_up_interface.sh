#!/bin/sh

##########################################
#### Bring Up Network Interface wlan0 ####
##########################################
echo "Wi-Fi: Bring Up Network Interface wlan0"
ifconfig wlan0 192.168.1.1 up
