########### Stop RF Rx Tx Test ###########

###############################################
#### Change to mtkrftest working directory ####
###############################################
echo *** Change Directory***
cd "$1inch_6/wifi/mtk/apps/"

#########################
#### Stop Rx Tx test ####
#########################
echo *** Stop Rx Tx Test ***
./mtkrftest set_stop_tr
