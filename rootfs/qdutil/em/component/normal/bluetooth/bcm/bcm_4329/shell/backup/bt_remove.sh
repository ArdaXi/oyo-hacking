#!/bin/sh

####################################
#### Remove Bluetooth Interface ####
####################################
echo "Remove Bluetooth Interface"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hciconfig hci0 down
fuser -k /dev/ttySAC1

#################################
#### Remove Bluetooth Module ####
#################################
echo "Remove Bluetooth Module"
rmmod $1../coreLib/modules/bluetooth/bcm/bcm_4329/hci_uart.ko
rmmod $1../coreLib/modules/bluetooth/bcm/bcm_4329/bluetooth.ko
sleep 1

##################################
#### Turn off Bluetooth Power ####
##################################
$1../coreLib/sbin/s3c_bt_cmd 2
sleep 1
