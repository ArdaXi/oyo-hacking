#### Initial WiFi ####

############################
#### Turn on WiFi Power ####
############################
/usr/local/sbin/s3c_wifi_cmd 1

#######################
#### Insmod module ####
#######################
insmod $1inch_6/wifi/bcm/modules/spi-dev.ko
sleep 3
insmod $1inch_6/wifi/bcm/modules/hspi-s3c2443.ko
sleep 3
insmod $1inch_6/wifi/bcm/modules/dhd.ko
sleep 3
