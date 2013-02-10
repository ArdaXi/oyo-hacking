#!/bin/sh

##################################
#### Turn off Bluetooth Power ####
##################################
echo "Turn Off Bluetooth Power"
$1../coreLib/sbin/s3c_bt_cmd 2
sleep 1
