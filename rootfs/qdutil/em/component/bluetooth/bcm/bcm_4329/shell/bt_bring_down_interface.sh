#!/bin/sh

#############################################
#### Bring Down Bluetooth Interface hci0 ####
#############################################
echo "Bring Down Bluetooth Interface hci0"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hciconfig hci0 down
fuser -k /dev/ttySAC1
sleep 1
