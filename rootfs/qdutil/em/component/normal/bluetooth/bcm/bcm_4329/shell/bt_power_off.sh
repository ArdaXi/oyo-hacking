#!/bin/sh

##################################
#### Turn off Bluetooth Power ####
##################################
echo "Turn Off Bluetooth Power"
$1/core/sbin/s3c_bt_cmd 2
sleep 1
