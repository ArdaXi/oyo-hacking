#!/bin/bash
# When mmc partitions appearing, check the device nodes exist or not.
# If device nodes does not exist, help to create manually.

echo SD Dev-Node Check

firstslot=$(grep -c mmcblk1 /proc/partitions)
secondslot=$(grep -c mmcblk2 /proc/partitions)

echo "first slot:$firstslot"
echo "second slot:$secondslot"

if [ $firstslot -ne 0 ] && [ ! -b /dev/mmcblk1 ];then
	echo "mknod /dev/mmcblk1 /dev/mmcblk1p1"
	mount -o rw,remount /	
	if [ ! -b /dev/mmcblk1 ]; then	mknod /dev/mmcblk1 b 254 8;fi
	if [ ! -b /dev/mmcblk1p1 ]; then	mknod /dev/mmcblk1p1 b 254 9;fi
	mount -o ro,remount /
elif [ $secondslot -ne 0 ] && [ ! -b /dev/mmcblk2 ];then
	echo "mknod /dev/mmcblk2 /dev/mmcblk2p1"
	mount -o rw,remount /	
	if [ ! -b /dev/mmcblk2 ]; then	mknod /dev/mmcblk2 b 254 16;fi
	if [ ! -b /dev/mmcblk2p1 ]; then	mknod /dev/mmcblk2p1 b 254 17;fi
	mount -o ro,remount /
fi
