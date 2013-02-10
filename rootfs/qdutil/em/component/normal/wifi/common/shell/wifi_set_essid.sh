#!/bin/sh

############################
#### Set Wireless ESSID ####
############################

###################################
#### Parameter Define          ####
#### $1 : interface name       ####
#### $2 : ESSID name           ####
###################################
echo "Set Wireless ESSID"
/usr/local/sbin/iwconfig $1 mode managed essid $2
sleep 1