#!/bin/sh

##############################
#### Start Tx Packet Test ####
##############################

############################
### Parameter Define    ####
#### $2 : Frequence     ####
#### $3 : Data Rate     ####
#### $4 : Gain          ####
#### $5 : Packet Size   ####
#### $6 : Packet Number ####
#### $7 : Gain Control  ####
#### $8 : bALC          ####
#### $9 : Preamble Type  ###
############################
echo "Wi-Fi: Start Tx Packet Test"
$1../coreLib/bin/wifi/mtk/mtk_5921/mtkrftest set_pkt_tx $2 $3 0x$4 $5 $6 $7 $8 $9

