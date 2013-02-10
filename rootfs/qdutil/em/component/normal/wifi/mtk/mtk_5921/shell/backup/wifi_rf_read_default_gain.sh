########### RF Continue Rx Test ###########

#######################################
#### Change directory to mtkrftest ####
#######################################
echo ***change directory***
cd "$1inch_6/wifi/mtk/apps/"

###################################
#### Read default gain control ####
###################################
echo *** Read default gain control ***
./mtkrftest get_eep_power_ex $2 $3
