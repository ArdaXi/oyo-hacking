#!/bin/sh

####################
#### Play Music ####
####################
echo "Play Music"
/usr/local/qisda/bin/madplay $3 --sample-rate=48000 $1/music/test/$2
sleep 1
