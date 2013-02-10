#!/bin/sh

#######################
#### Start Rx Test ####
#######################

############################
### Parameter Define    ####
#### $2 : Frequence     ####
############################
echo "Wi-Fi: Start Rx Test"
$1../coreLib/bin/wifi/mtk/mtk_5921/mtkrftest set_pkt_rx $2
