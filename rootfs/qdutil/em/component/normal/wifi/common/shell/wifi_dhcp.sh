#!/bin/sh

############################
#### Set Wireless ESSID ####
############################

###################################
#### Parameter Define          ####
#### $1 : interface name       ####
###################################
echo "UDHCPC"
/usr/local/sbin/udhcpc -i $1
sleep 1