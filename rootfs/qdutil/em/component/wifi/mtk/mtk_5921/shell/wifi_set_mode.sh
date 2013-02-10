#!/bin/sh

################################################
#### Set RF Test Mode                       ####
#### $1: Path                               ####
#### $2: Mode                               ####
####     (1) Normal Mode: set_normal_mode   ####
####     (2) Standby Mode: set_standby_mode ####
####     (3) Test Mode: set_test_mode       ####
################################################
echo "Wi-Fi: Set Mode"
$1../coreLib/bin/wifi/mtk/mtk_5921/mtkrftest $2
sleep 1
