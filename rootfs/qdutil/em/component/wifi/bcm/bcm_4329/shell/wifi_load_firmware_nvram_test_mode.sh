#!/bin/sh

#######################################################
#### Load Firmware And nvram Setting For Test Mode ####
#######################################################
echo "Load Firmware And nvram Setting For Test Mode"
$1../coreLib/bin/wifi/bcm/bcm_4329/dhdarm -i eth0 download $1../coreLib/bin/wifi/bcm/bcm_4329/test_mode/sdio-ag-cdc-11n-mfgtest-roml-seqcmds.bin $1../coreLib/bin/wifi/bcm/bcm_4329/test_mode/nvram.txt
sleep 3
