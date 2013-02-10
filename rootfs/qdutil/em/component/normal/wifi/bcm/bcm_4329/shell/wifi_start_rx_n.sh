#!/bin/sh

#########################
#### Start Rx N Test ####
#########################

###################################
#### Parameter Define          ####
#### $1 : BaseDir              ####
#### $2 : Channel              ####
#### $3 : Data Rate(msc index) ####
###################################
echo "Start Rx N Test"
$1/core/sbin/wifi/bcm/bcm_4329/wlarm disassoc
$1/core/sbin/wifi/bcm/bcm_4329/wlarm down
$1/core/sbin/wifi/bcm/bcm_4329/wlarm up
$1/core/sbin/wifi/bcm/bcm_4329/wlarm channel $2
$1/core/sbin/wifi/bcm/bcm_4329/wlarm txant 0
$1/core/sbin/wifi/bcm/bcm_4329/wlarm chanspec -c $2 -b 5 -w 20 -s 0
$1/core/sbin/wifi/bcm/bcm_4329/wlarm join test imode adhoc
$1/core/sbin/wifi/bcm/bcm_4329/wlarm rateset 54b
$1/core/sbin/wifi/bcm/bcm_4329/wlarm nrate -m $3 -s 0
