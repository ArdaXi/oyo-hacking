#!/bin/sh
echo Compiling root filesystem.
cd rootfs
tar -cvf ../qdutil/upfw/rootfs.tar *
echo Done.
