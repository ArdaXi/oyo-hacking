#### Initial WiFi ####

############################
#### Turn on WiFi Power ####
############################
/usr/local/sbin/s3c_wifi_cmd 1

#######################
#### Insmod module ####
#######################
#insmod spi-dev.ko
#insmod hspi-s3c2443.ko
insmod $1inch_9/wifi/asus/modules/gspi.ko
insmod $1inch_9/wifi/asus/modules/gspi8xxx.ko

