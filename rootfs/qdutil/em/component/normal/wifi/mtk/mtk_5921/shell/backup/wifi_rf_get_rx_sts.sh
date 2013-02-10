########### Stop RF Rx Tx Test ###########

###############################################
#### Change to mtkrftest working directory ####
###############################################
echo ***change directory***
cd "$1inch_6/wifi/mtk/apps/"

##############################
#### Get packet Tx status ####
##############################
echo *** Get packet Tx status ***
./mtkrftest get_pkt_rx_sts
