#!/bin/sh

##########################
#### Set Audio Volume ####
##########################
echo "Set Audio Volume"
$1../coreLib/qisda/bin/amixer sset PCM $2
sleep 1
