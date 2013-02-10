#!/bin/sh

################################
#### Start Tx Continue Test ####
################################

############################
### Parameter Define    ####
#### $2 : Frequence     ####
#### $3 : Data Rate     ####
#### $4 : Gain          ####
############################
echo "Wi-Fi: Start Tx Continue Test"
$1../coreLib/bin/wifi/mtk/mtk_5921/mtkrftest set_cnt_power $2 $3 $4
