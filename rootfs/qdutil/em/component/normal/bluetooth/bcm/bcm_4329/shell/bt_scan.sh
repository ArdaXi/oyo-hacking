#!/bin/sh

#########################
#### Bluetooth: Scan ####
#########################
echo "Bluetooth: Scan"
$1/core/sbin/bluetooth/bcm/bcm_4329/hcitool scan
