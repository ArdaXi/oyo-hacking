#!/bin/bash
mount -t vfat /dev/mmcblk1p1 /mnt/mmc1p1 || exit $?
