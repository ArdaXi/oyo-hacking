#!/bin/sh

#############################
#### Remove Wi-Fi Module ####
#############################
echo "Wi-Fi: Remove dhd.ko Module"
rmmod $1../coreLib/modules/wifi/mtk/mtk_5921/mt5921sta_spi.ko

echo "Wi-Fi: Remove s3c2443.ko Module"
rmmod $1../coreLib/modules/wifi/mtk/mtk_5921/hspi-s3c2443.ko

echo "Wi-Fi: Remove spi-dev.ko Module"
rmmod $1../coreLib/modules/wifi/mtk/mtk_5921/spi-dev.ko
