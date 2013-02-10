#!/bin/sh

#############################
#### Remove Wi-Fi Module ####
#############################
echo "Remove dhd.ko Module"
rmmod $1/core/modules/wifi/bcm/bcm_4329/dhd.ko
sleep 1

echo "Remove s3c2443.ko Module"
rmmod $1/core/modules/wifi/bcm/bcm_4329/hspi-s3c2443.ko
sleep 1

echo "Remove spi-dev.ko Module"
rmmod $1/core/modules/wifi/bcm/bcm_4329/spi-dev.ko
sleep 1
