oyofw.tar.bz2 : qdutil/upfw/rootfs.tar qdutil/upfw/
	tar -pcjf oyofw.tar.bz2 qdutil
	md5sum -b oyofw.tar.bz2 > oyofw.md5sums
qdutil/upfw/rootfs.tar : rootfs/
	tar -cf qdutil/upfw/rootfs.tar rootfs/*
clean : 
	rm oyofw.tar.bz2 oyofw.md5sums qdutil/upfw/rootfs.tar
