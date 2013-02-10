########### RF Continue Rx Test ###########

#######################################
#### Change directory to mtkrftest ####
#######################################
echo ***change directory***
cd "$1inch_6/wifi/mtk/apps/"

######################################
#### Stop current ####################
#### (1)tx output power  #############
#### (2)local frequency  #############
###  (3) carrier suppression test  ###
######################################
echo *** Set standby mode ***
./mtkrftest set_standby_mode
sleep 1

###############################
#### Set Continue Tx Power ####
###############################
echo *** Set continue Tx power ***
./mtkrftest set_cnt_power $2 $3 $4
