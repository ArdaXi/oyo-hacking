#!/bin/sh

#########################
#### Start Tx N Test ####
#########################
echo "Start Tx N Test"
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm down
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm up
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm mpc 0
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm up
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm chanspec -c $2 -b 2 -w 20 -s 0
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm nrate -m $3 -s 0
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm txpwr1 -o -d $4
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm pkteng_start 00:11:22:33:44:55 tx 300 1500 0