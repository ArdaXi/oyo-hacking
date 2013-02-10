#!/bin/sh

##############################
#### Get Rx Packet Status ####
##############################
echo "Wi-Fi: Get Rx Packet Status"
$1../coreLib/bin/wifi/mtk/mtk_5921/mtkrftest get_pkt_rx_sts
sleep 1
