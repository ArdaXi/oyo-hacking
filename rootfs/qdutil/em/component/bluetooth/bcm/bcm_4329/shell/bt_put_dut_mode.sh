#!/bin/sh

#############################################
#### Bluetooth: Enter Bluetooth DUT Mode ####
#############################################
echo "Bluetooth: Enter Bluetooth DUT Mode"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hcitool cmd 0x06 0x0003 0x00
sleep 1