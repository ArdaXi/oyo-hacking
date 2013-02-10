#!/bin/sh

######################
#### Stop Rx Test ####
######################
echo "Wi-Fi: Stop Rx Test"
$1/core/sbin/wifi/mtk/mtk_5921/mtkrftest set_stop_tr
