#!/bin/sh

#############################
#### Turn On Audio Power ####
#############################
echo "Turn On Audio Power"
$1/core/sbin/audio_cmd 7 1
sleep 1
