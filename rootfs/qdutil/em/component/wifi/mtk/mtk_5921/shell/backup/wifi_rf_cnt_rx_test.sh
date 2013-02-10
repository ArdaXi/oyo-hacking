########### RF Continue Rx Test ###########

#######################################
#### Change directory to mtkrftest ####
#######################################
echo ***change directory***
cd "$1inch_6/wifi/mtk/apps/"

#################################
#### Stop current Tx/Rx test ####
#################################
echo *** Stop current Tx/Rx test ***
./mtkrftest set_stop_tr
sleep 1

###########################
#### Set Rx Frequence ####
###########################
echo *** Set continue RX ***
./mtkrftest set_pkt_rx $2
