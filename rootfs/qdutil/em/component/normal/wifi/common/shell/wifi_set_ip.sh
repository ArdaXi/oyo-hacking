#!/bin/sh

#######################################
#### Set Network Interface eth0 IP ####
#######################################

###################################
#### Parameter Define          ####
#### $1 : interface name       ####
#### $2 : ip address           ####
###################################
echo "Set Network Interface IP"
ifconfig $1 $2
