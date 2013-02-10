########## Remove WiFi ##########

#################################
#### Disable wlan0 interface ####
#################################
ifconfig wlan0 down

###############################
######## Insmod module ########
###############################
rmmod mt5921sta_spi
rmmod hspi-s3c2443
rmmod spi-dev

#############################
#### Turn off WiFi Power ####
#############################
/usr/local/sbin/s3c_wifi_cmd 2

###############################################
#### Change to mtkrftest working directory ####
###############################################
echo ***change directory***
cd "$1inch_6/wifi/mtk/apps/"

######################################
#### Set mtkrftest to normal mode ####
######################################
echo *******Enter normal mode********
./mtkrftest set_normal_mode

#############################
#### Kill RF Test Server ####
#############################
echo *** Killall mtkrftest server***
killall mtkrftest
echo *** Remove mtkrftest sock file ***
rm -rf $1inch_6/wifi/mtk/apps/sock


