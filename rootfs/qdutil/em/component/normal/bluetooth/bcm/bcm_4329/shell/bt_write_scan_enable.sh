#!/bin/sh

######################################
#### Bluetooth: Write Scan Enable ####
######################################
echo "Bluetooth: Write Scan Enable"
$1../core/sbin/bluetooth/bcm/bcm_4329/hcitool cmd 0x03 0x001a 0x03
sleep 1
