#!/bin/sh

#############################
#### Insert Wi-Fi Module ####
#############################
echo "Insert spi-dev.ko Module"
insmod $1../coreLib/modules/wifi/bcm/bcm_4329/spi-dev.ko
sleep 3

echo "Insert s3c2443.ko Module"
insmod $1../coreLib/modules/wifi/bcm/bcm_4329/hspi-s3c2443.ko
sleep 3

echo "Insert dhd.ko Module"
insmod $1../coreLib/modules/wifi/bcm/bcm_4329/dhd.ko
sleep 3
