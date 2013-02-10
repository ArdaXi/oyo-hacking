########### RF Test ###########

##########################################
#### Bring up network interface wlan0 ####
##########################################
ifconfig wlan0 192.168.1.1 up

###############################################
#### Change to mtkrftest working directory ####
###############################################
echo ***change directory***
cd "$1inch_6/wifi/mtk/apps/"

###########################
#### Start test server ####
###########################
echo ******* Start test server ********
./mtkrftest wlan0 -s -f sock -d $1inch_6/wifi/mtk/apps/result.txt &
sleep 3

#######################################
### Enter test mode (in flow chart) ###
#######################################
echo ******* Enter test mode ********
./mtkrftest set_test_mode