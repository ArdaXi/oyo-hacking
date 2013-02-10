#!/bin/sh

##############################
#### Turn off Audio Power ####
##############################
echo "Turn Off Audio Power"
$1/core/sbin/audio_cmd 7 0
sleep 1
