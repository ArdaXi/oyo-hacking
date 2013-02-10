#!/bin/sh

#####################################
#### Bluetooth: Set Event Filter ####
#####################################
echo "Bluetooth: Set Event Filter"
$1/core/sbin/bluetooth/bcm/bcm_4329/hcitool cmd 0x03 0x0005 0x02 0x00 0x03
sleep 1
