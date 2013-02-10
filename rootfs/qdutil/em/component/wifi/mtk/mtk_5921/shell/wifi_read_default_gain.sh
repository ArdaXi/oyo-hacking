#!/bin/sh

###################################
#### Read Default Gain Control ####
###################################

############################
### Parameter Define    ####
#### $2 : Frequence     ####
#### $3 : Data Rate     ####
############################
echo "Wi-Fi: Read Default Gain Control"
$1../coreLib/bin/wifi/mtk/mtk_5921/mtkrftest get_eep_power_ex $2 $3
sleep 1