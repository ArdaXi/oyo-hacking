#!/bin/sh

#################################
#### Turn on Bluetooth Power ####
#################################
echo "Turn on Bluetooth Power"
$1../coreLib/sbin/s3c_bt_cmd 1

#################################
#### Insert Bluetooth Module ####
#################################
echo "Insert Bluetooth Module"
insmod $1../coreLib/modules/bluetooth/bcm/bcm_4329/bluetooth.ko
insmod $1../coreLib/modules/bluetooth/bcm/bcm_4329/hci_uart.ko
sleep 1

######################################
#### Bring up Bluetooth Interface ####
######################################
echo "Bring up Bluetooth Interface"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hciattach /dev/ttySAC1 bcm4329
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hciconfig hci0 up piscan
sleep 1

