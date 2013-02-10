#!/bin/sh

#########################
#### Bluetooth: Scan ####
#########################
echo "Bluetooth: Scan"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hcitool scan
