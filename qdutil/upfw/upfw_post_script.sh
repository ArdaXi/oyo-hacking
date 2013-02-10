#!/bin/ash
echo save adept data
if [ -f /mnt/mmc0p3/.adept/device.xml ]; then
	cp /mnt/mmc0p3/.adept/device.xml /tmp/device.xml
fi
if [ -f /mnt/mmc0p3/.adept/devicesalt ]; then
	cp /mnt/mmc0p3/.adept/devicesalt /tmp/devicesalt
fi
if [ -f /mnt/mmc0p3/.adept/devicekey ]; then
	cp /mnt/mmc0p3/.adept/devicekey /tmp/devicekey
fi

echo save QBookApp.ini
if [ -f /mnt/mmc0p3/settings/QBookApp.ini ]; then
	cp /mnt/mmc0p3/settings/QBookApp.ini /tmp/QBookApp.ini
	echo "=== backup QBookApp ini === "
fi

echo format mmcblk0p3 to clean rwdata
umount /dev/mmcblk0p3
mkfs.ext3 /dev/mmcblk0p3

echo restore adept data
mount /dev/mmcblk0p3 /mnt/mmc0p3
if [ -f /tmp/device.xml ]; then
	mkdir /mnt/mmc0p3/.adept
	cp /tmp/device.xml /mnt/mmc0p3/.adept/device.xml
fi
if [ -f /tmp/devicesalt ]; then
	mkdir /mnt/mmc0p3/.adept
	cp /tmp/devicesalt /mnt/mmc0p3/.adept/devicesalt
fi
if [ -f /tmp/devicekey ]; then
	mkdir /mnt/mmc0p3/.adept
	cp /tmp/devicekey /mnt/mmc0p3/.adept/devicekey
fi
if [ -d /mnt/mmc0p2/Firmware/qdutil ]; then
	echo "clean internal memory upgrade files..."
	rm -fr /mnt/mmc0p2/Firmware/qdutil
fi
echo format mmcblk0p4 to clean private storage
umount /dev/mmcblk0p4
mkfs.ext3 /dev/mmcblk0p4

echo install preload contents
mount /dev/mmcblk0p1 /mnt/mmc0p1
if [ -f /mnt/mmc0p1/home/preload/preload.tar ]; then
	umount /mnt/mmc0p2
	mount -t vfat -o async,noatime /dev/mmcblk0p2 /mnt/mmc0p2
	rm -rf /mnt/mmc0p2/preload
	mkdir /mnt/mmc0p2/preload
	tar xvf /mnt/mmc0p1/home/preload/preload.tar -C /mnt/mmc0p2/preload
	sync
	sync
fi
echo restore QBookApp.ini
if [ -f /tmp/QBookApp.ini ]; then
	mkdir -p /mnt/mmc0p3/settings/
	cp /tmp/QBookApp.ini /mnt/mmc0p3/settings/QBookApp.ini
	echo "=== QBookApp ini is back ==="
fi
if [ -d /mnt/mmc1p1/dropbear ]; then
	cp -f /mnt/mmc1p1/dropbear/* /mnt/mmc0p1/mnt/etc/dropbear/
fi
sync

exit 0
