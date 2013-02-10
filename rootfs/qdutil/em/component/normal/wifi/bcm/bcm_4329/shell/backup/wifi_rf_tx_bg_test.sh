########### RF Tx BG Test ###########

#################################
#### Change directory to bcm ####
#################################
cd "$1inch_6/wifi/bcm/apps/"

##########################
#### Start Tx BG Test ####
##########################
./wlarm down
./wlarm up
./wlarm mpc 0
./wlarm up
./wlarm channel $2
./wlarm bg_rate $3
./wlarm rateset $3b
./wlarm txpwr1 -o -d $4
./wlarm pkteng_start 00:11:22:33:44:55 tx 300 1500 0
