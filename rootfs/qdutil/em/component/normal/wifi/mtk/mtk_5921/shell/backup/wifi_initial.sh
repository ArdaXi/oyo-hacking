#### Initial WiFi ####

mount -o remount,rw, auto /

############################
#### Turn on WiFi Power ####
############################
/usr/local/sbin/s3c_wifi_cmd 1

#######################
#### Insmod module ####
#######################
insmod $1inch_6/wifi/mtk/modules/spi-dev.ko
insmod $1inch_6/wifi/mtk/modules/hspi-s3c2443.ko
insmod $1inch_6/wifi/mtk/modules/mt5921sta_spi.ko
