#!/bin/sh

###########################
#### Start Tx B/G Test ####
###########################

########################
### Parameter Define ###
#### $1 : BaseDir   ####
#### $2 : Channel   ####
#### $3 : Data Rate ####
#### $4 : Power     ####
########################
echo "Start Tx B/G Test"
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm down
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm up
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm mpc 0
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm up
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm channel $2
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm bg_rate $3
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm rateset $3b
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm txpwr1 -o -d $4
$1../coreLib/bin/wifi/bcm/bcm_4329/wlarm pkteng_start 00:11:22:33:44:55 tx 300 1500 0
