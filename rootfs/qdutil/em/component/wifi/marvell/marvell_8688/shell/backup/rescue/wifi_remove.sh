########## Remove WiFi ##########

###############################
######## Remove module ########
###############################
rmmod gspi8xxx
rmmod gspi

#############################
#### Turn off WiFi Power ####
#############################
$1../rescue/sbin/s3c_wifi_cmd 2
