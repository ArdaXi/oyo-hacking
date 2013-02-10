#!/bin/sh

###########################
#### Write Scan Enable ####
###########################
echo "Write Scan Enable"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hcitool cmd 0x03 0x001a 0x03
sleep 1

##########################
#### Set Event Filter ####
##########################
echo "Set Event Filter"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hcitool cmd 0x03 0x0005 0x02 0x00 0x03
sleep 1

##################################
#### Enter Bluetooth DUT Mode ####
##################################
echo "Enter Bluetooth DUT Mode"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hcitool cmd 0x06 0x0003 0x00
sleep 1