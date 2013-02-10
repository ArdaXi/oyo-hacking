#### Initial WiFi ####

##############################################################
#### Change Directory to /mnt/mmc1p1/ebook/Asus_WiFi_SPI/ ####
##############################################################
cd "/mnt/mmc1p1/ebook/Asus_WiFi_SPI/"

#######################
#### Insmod module ####
#######################
insmod gspi.ko
sleep 1

#######################
#### Insmod module ####
#######################
insmod gspi8xxx.ko
sleep 2

#################################
#### Activate eth0 interface ####
#################################
ifconfig eth0 up

#############################################
#### Change Directory to /usr/local/sbin ####
#############################################
cd "/usr/local/sbin"

#########################
#### Set region code ####
#########################
./iwpriv eth0 setregioncode 0x10

##############################
#### Scanning Existing AP ####
##############################
./iwlist eth0 scanning
sleep 10

###############################
#### Setting ESSID of eth0 ####
###############################
./iwconfig eth0 essid PCI
sleep 1

###############################
#### Set static IP of eth0 ####
###############################
#ifconfig eth0 XX.XX.XX.XX
#sleep 1

###############################
#### Set IP of eth0 by DHCP####
###############################
udhcpc -i eth0 &
sleep 10

###############################
########## do iPerf ###########
###############################
cd "/mnt/mmc1p1/ebook/Asus_WiFi_SPI/iPerf"
./iperf -c XX.XX.XX.XX -w 128k -t 120 -i 10