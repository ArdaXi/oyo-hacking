########### Stop RF Rx Tx Test ###########

###############################################
#### Change to mtkrftest working directory ####
###############################################
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
