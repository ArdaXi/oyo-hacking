########### RF Tx N Test ###########

#################################
#### Change directory to bcm ####
#################################
cd "$1inch_6/wifi/bcm/apps/"

##########################
#### Start Tx N Test ####
##########################
./wlarm down
./wlarm up
./wlarm mpc 0
./wlarm up
./wlarm chanspec -c $2 -b 2 -w 20 -s 0
./wlarm nrate -m $3 -s 0
./wlarm txpwr1 -o -d $4
./wlarm pkteng_start 00:11:22:33:44:55 tx 300 1500 0