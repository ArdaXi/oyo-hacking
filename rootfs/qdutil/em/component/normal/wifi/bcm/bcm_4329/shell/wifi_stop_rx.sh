#!/bin/sh

#############################
#### Stop Rx B/G/N Test ####
#############################
echo "Stop Rx B/G/N Test"
$1/core/sbin/wifi/bcm/bcm_4329/wlarm pkteng_stop rx
