#!/bin/sh

#######################
#### Running iPerf ####
#######################

#######################################
#### Parameter Define              ####
#### $2 : server                   ####
####      client                   ####
####      off                      ####
#### $3 : remote device ip address ####
#######################################
echo "Running iPerf"

if [ "$2" == "server" ]; then
	$1../coreLib/bin/wifi/common/iperf -s
elif [ "$2" == "client" ]; then
	$1../coreLib/bin/wifi/common/iperf -c $3 -w 128k -t 120 -i 10
elif [ "$2" == "off" ]; then
	killall iperf
fi
