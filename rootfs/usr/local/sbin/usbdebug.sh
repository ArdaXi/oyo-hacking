#!/bin/sh
echo s0:2345:respawn:/sbin/getty 115200 ttygs0 >> /etc/inittab
init q

insmod /sbin/g_serial.ko
sleep 2
killall syslogd
/sbin/syslogd  -O /dev/ttygs0
