#!/bin/sh

############################
#### Set Wireless ESSID ####
############################

###################################
#### Parameter Define          ####
#### $2 : interface name       ####
#### $3 : ESSID name           ####
###################################
echo "Set Wireless ESSID"
$1../coreLib/sbin/iwconfig $2 mode managed essid $3
sleep 1