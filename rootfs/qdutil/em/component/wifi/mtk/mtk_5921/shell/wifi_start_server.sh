#!/bin/sh

###########################
#### Start Test Server ####
###########################
echo "Wi-Fi: Start Test Server"
$1../coreLib/bin/wifi/mtk/mtk_5921/mtkrftest wlan0 -s -f sock -d $1result.txt &
sleep 3
