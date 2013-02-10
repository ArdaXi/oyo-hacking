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

################################
#### Set Continue Tx Packet ####
################################
echo *** Set continue Tx packet ***
./mtkrftest set_pkt_tx $2 $3 $4 $5 $6 $7 $8 $9
