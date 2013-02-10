#!/bin/sh

#################################
#### Insert Bluetooth Module ####
#################################
echo "Insert bluetooth.ko Module"
insmod $1../coreLib/modules/bluetooth/bcm/bcm_4329/bluetooth.ko
sleep 1

echo "Insert hci_uart.ko Module"
insmod $1../coreLib/modules/bluetooth/bcm/bcm_4329/hci_uart.ko
sleep 1
