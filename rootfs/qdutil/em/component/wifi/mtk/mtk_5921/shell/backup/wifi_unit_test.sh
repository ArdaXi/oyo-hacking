########### Unit Test ###########

#################################
#### Bring up eth0 interface ####
#################################
/sbin/ifconfig wlan0 up

#################################
#### Must Do this dummy once ####
#################################
/usr/local/sbin/iwconfig wlan0 mode managed essid aaa

#########################
###### Scanning AP ######
#########################
/usr/local/sbin/iwlist wlan0 scanning

###########################
###### Connecting AP ######
######  No Security  ######
###########################
/usr/local/sbin/iwconfig wlan0 essid WIFI_TEST_ONLY_ASUSAP
sleep 1

#################################
######### Connecting AP #########
#########      WEP      #########
#### Need modify essid & key ####
#################################
#/usr/local/sbin/iwconfig wlan0 mode managed essid AP-WGQ1 key 5305209999

#################################
#### Set IP of wlan0 by DHCP ####
#################################
/sbin/udhcpc -i wlan0 &
sleep 10

####################################
#### Continous Get HTML Content ####
####################################
typeset i value=1
while [ value ]; do
rm -rf /tmp/google.html
wget http://www.google.com.tw -O /tmp/google.html ; 
done