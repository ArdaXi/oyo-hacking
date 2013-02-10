#!/bin/sh

#############################
#### Insert Wi-Fi Module ####
#############################
echo "Wi-Fi: Insert spi-dev.ko Module"
insmod $1../coreLib/modules/wifi/mtk/mtk_5921/spi-dev.ko

echo "Wi-Fi: Insert s3c2443.ko Module"
insmod $1../coreLib/modules/wifi/mtk/mtk_5921/hspi-s3c2443.ko

echo "Wi-Fi: Insert mt5921sta_spi.ko Module"
insmod $1../coreLib/modules/wifi/mtk/mtk_5921/mt5921sta_spi.ko
