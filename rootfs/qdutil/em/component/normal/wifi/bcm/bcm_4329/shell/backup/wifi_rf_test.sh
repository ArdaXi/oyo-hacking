########### RF Test ###########

#########################################
#### Load firmware and nvram setting ####
#########################################
cd "$1inch_6/wifi/bcm/apps/"
./dhdarm -i eth0 download test_mode/sdio-ag-cdc-11n-mfgtest-roml-seqcmds.bin test_mode/nvram.txt
sleep 3

#########################################
#### Bring up network interface eth0 ####
#########################################
ifconfig eth0 192.168.1.5 up