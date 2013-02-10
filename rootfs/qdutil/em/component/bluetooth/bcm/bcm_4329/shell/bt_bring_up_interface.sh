#!/bin/sh

###########################################
#### Bring up Bluetooth Interface hci0 ####
###########################################
echo "Bring up Bluetooth Interface hci0"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hciattach /dev/ttySAC1 bcm4329
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hciconfig hci0 up piscan
sleep 1
