#!/bin/sh

##################################
#### Bluetooth: Start Tx Test ####
##################################

########################################################################################################
#### byte 04~09: Remote Bluetooth device address                                                    ####
#### byte 10~11: Report Period, value: 250~2000 (milliseconds)                                      ####
#### byte 12:    Frequency offset from 2.402GHz, value: 0x00~0x4E                                   ####
#### byte 13:    Modulation Type, value: 0x01~0x04                                                  ####
####     0x1 0x00 8-bit Pattern                                                                     ####
####     0x2 0xFF 8-bit Pattern                                                                     ####
####     0x3 0xAA 8-bit Pattern                                                                     ####
####     0x9 0xF0 8-bit Pattern                                                                     ####
####     0x4 PRBS9 Pattern                                                                          ####
#### byte 14:    Logical Channel, value: 0x00~0x04                                                  ####
####     0x0 ACL EDR                                                                                ####
####     0x1 ACL Basic                                                                              ####
####     0x2 eSCO EDR                                                                               ####
####     0x3 eSCO Basic                                                                             ####
####     0x4 SCO Basic                                                                              ####
#### byte 15:    Packet Type, value: 0x00~0x0F                                                      ####
####     0x4 DH1 / 2-DH1                                                                            ####
####     0x8 3-DH1                                                                                  ####
####     0xA 2-DH3                                                                                  ####
####     0xB DH3 / 3-DH3                                                                            ####
####     0xE 2-DH5                                                                                  ####
####     0xF DH5 / 3-DH5                                                                            ####
#### byte 16~17: Packet Length 0~65535, value: 0x00~0xFFFF                                          ####
########################################################################################################
echo "Bluetooth: Start Rx Test"
$1../coreLib/bin/bluetooth/bcm/bcm_4329/hcitool cmd 0x3f 0x$2 0x$3 0x$4 0x$5 0x$6 0x$7 0x$8 0x$9 0x$10 0x$11 0x$12 0x$13 0x$14 0x$15 0x$16
#                                               #01 #02  #03  #04  #05  #06  #07  #08  #09  #10  #11   #12   #13   #14   #15   #16   #17
