#!/bin/sh

#########################################################
#### Load Firmware And nvram Setting For Normal Mode ####
#########################################################
echo "Load Firmware And nvram Setting For Normal Mode"
$1../coreLib/bin/wifi/bcm/bcm_4329/dhdarm -i eth0 download $1../coreLib/bin/wifi/bcm/bcm_4329/normal_mode/fw.bin $1../coreLib/bin/wifi/bcm/bcm_4329/normal_mode/nvram.txt
sleep 3
