#!/bin/bash

#setup for printing debug message
export QBOOK_DEBUG=0

# setup lang & path
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LD_LIBRARY_PATH=/usrlib:/usr/local/lib:/usr/local/qisda/lib
export PATH=/usr/local/qisda/bin:$PATH
export HOME=/rwdata

# setup qt qws
export QT_QWS_FONTDIR=/usr/local/qisda/fonts
export QWS_KEYBOARD=qbook:/dev/input/event0
export QWS_MOUSE_PROTO=qbook:/dev/input/event1
export QWS_DBLCLICK_DISTANCE=20

# for 9" screen
#export QWS_DISPLAY="transformed:qbook:mmWidth=203:mmHeight=270:0"

# for 6" screen
export QWS_DISPLAY="transformed:qbook:mmWidth=158:mmHeight=211:0"

# setup directory
if [ -d /rwdata ]; then
    mkdir -p /rwdata/settings
    mkdir -p /rwdata/data
    mkdir -p /rwdata/.adept
    mkdir -p /rwdata/news
fi
if [ -d /mnt/mmc0p4 ]; then
    mkdir -p /mnt/mmc0p4/DownloadBooks
fi

# setup settings
if [ ! -e /home/settings/QBookApp.ini ]; then
    cp /usr/local/qisda/etc/QBookApp.default.ini /home/settings/QBookApp.ini
fi

# setup adobe drm
if [ ! -e /mnt/mmc0p2/.adobe-digital-editions ]; then
    mkdir -p /mnt/mmc0p2/.adobe-digital-editions
    mkdir -p /mnt/mmc0p2/"Digital Editions"
fi

# setup mass storage update folder
if [ ! -e /mnt/mmc0p2/Firmware ]; then
	mkdir -p /mnt/mmc0p2/Firmware
fi

export ADEPT_DEVICE_NAME=eBook
export ADEPT_DEVICE_TYPE=mobile
export ADEPT_ACTIVATION_FILE=/mnt/mmc0p2/.adobe-digital-editions/activation.xml
export ADEPT_DEVICE_FILE=/rwdata/.adept/device.xml
export ADOBE_DE_DOC_FOLDER=/mnt/mmc0p2/"Digital Editions"
export ADOBE_DE_ROOT_FOLDER=/home/books
export ADOBE_DE_MOBILE=1
export Q_ADEPT_DEVICE_FILE=/mnt/mmc0p2/.adobe-digital-editions/device.xml

# run app until normal quit or shutdown
err=-1
until [ $err -eq 0 -o $err -eq -777 ]; do
    (cd /usr/local/qisda/bin; ./QBookApp -qws)
    err=$?
    rm -f /tmp/mmi
    # BenQ.matt.20100107: Resolve a device hang issue.
    echo Turn off wifi...
    rmmod /usr/local/sbin/mt5921sta_spi.ko
    rmmod /usr/local/sbin/hspi-s3c2443.ko
    rmmod /usr/local/sbin/spi-dev.ko
    /usr/local/sbin/s3c_wifi_cmd 2
    # BenQ.matt.20100107: end
    sleep 2
done

# shutdown now
if [ $err -eq -777 ]; then
    sync
    shutdown -h now
fi

