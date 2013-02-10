#!/bin/sh

###########################
#### Start Rx B/G Test ####
###########################

########################
### Parameter Define ###
#### $1 : BaseDir   ####
#### $2 : Channel   ####
#### $3 : Data Rate ####
########################
echo "Start Rx B/G Test"
$1/core/sbin/wifi/bcm/bcm_4329/wlarm disassoc
$1/core/sbin/wifi/bcm/bcm_4329/wlarm down
$1/core/sbin/wifi/bcm/bcm_4329/wlarm up
$1/core/sbin/wifi/bcm/bcm_4329/wlarm channel $2
$1/core/sbin/wifi/bcm/bcm_4329/wlarm txant 0
$1/core/sbin/wifi/bcm/bcm_4329/wlarm chanspec -c $2 -b 2 -w 20 -s 0
$1/core/sbin/wifi/bcm/bcm_4329/wlarm join test imode adhoc
$1/core/sbin/wifi/bcm/bcm_4329/wlarm rateset $3b
$1/core/sbin/wifi/bcm/bcm_4329/wlarm nrate -r $3 -s 0
