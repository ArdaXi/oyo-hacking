#!/bin/sh

############################
#### Set Wireless ESSID ####
############################

###################################
#### Parameter Define          ####
#### $1 : interface name       ####
###################################
echo "UDHCPC"
$1../coreLib/sbin/udhcpc -i $2
sleep 1