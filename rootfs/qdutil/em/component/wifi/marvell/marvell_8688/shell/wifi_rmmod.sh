#!/bin/sh

#############################
#### Remove Wi-Fi Module ####
#############################
echo "Wi-Fi: Remove gspi8xxx.ko Module"
rmmod gspi8xxx

echo "Wi-Fi: Remove gspi.ko Module"
rmmod gspi
