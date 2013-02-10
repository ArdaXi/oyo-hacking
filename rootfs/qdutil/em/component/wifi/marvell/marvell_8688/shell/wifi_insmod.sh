#!/bin/sh

#############################
#### Insert Wi-Fi Module ####
#############################

#############################
#### Parameter Define    ####
#### $2 : NormalMode     ####
####      TestMode       ####
#############################
echo "Wi-Fi: Insert gspi.ko Module"
insmod $1../coreLib/modules/wifi/marvell/marvell_8688/gspi.ko

echo "Wi-Fi: Insert gspi8xxx.ko Module"
if [ "$2" == "NormalMode" ]; then
	insmod $1../coreLib/modules/wifi/marvell/marvell_8688/gspi8xxx.ko
elif [ "$2" == "TestMode" ]; then
	insmod $1../coreLib/modules/wifi/marvell/marvell_8688/gspi8xxx.ko mfgmode=1
fi
