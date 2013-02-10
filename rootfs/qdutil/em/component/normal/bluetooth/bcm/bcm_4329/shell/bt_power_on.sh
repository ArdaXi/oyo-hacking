#!/bin/sh

#################################
#### Turn On Bluetooth Power ####
#################################
echo "Turn On Bluetooth Power"
$1/core/sbin/s3c_bt_cmd 1
sleep 1
