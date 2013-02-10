#!/bin/sh

##########################
#### Set Audio Volume ####
##########################
echo "Set Audio Volume"
/mars/bin/amixer sset PCM $1
sleep 1
