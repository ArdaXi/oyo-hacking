#!/bin/sh
echo Compiling root filesystem.
cd rootfs
tar -cvf ../qdutil/upfw/rootfs.tar *
cd ../
tar -pcvjf oyofw.tar.bz2 qdutil
md5sum -b oyofw.tar.bz2 > oyofw.md5sums
echo Done.
