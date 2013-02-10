#!/bin/sh

#################################
#### Remove Bluetooth Module ####
#################################
echo "Remove hci_uart.ko Module"
rmmod $1/core/modules/bluetooth/bcm/bcm_4329/hci_uart.ko
sleep 1

echo "Remove bluetooth.ko Module"
rmmod $1/core/modules/bluetooth/bcm/bcm_4329/bluetooth.ko
sleep 1
