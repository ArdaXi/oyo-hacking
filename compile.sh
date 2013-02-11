#!/bin/sh
echo Compiling root filesystem.
cd rootfs
tar -cvf --owner=root ../qdutil/upfw/rootfs.tar *
cd ../
tar -pcvjf oyofw.tar.bz2 qdutil
md5sum -b oyofw.tar.bz > oyofw.md5sums
echo Done.
