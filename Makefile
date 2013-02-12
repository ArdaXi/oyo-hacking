oyofw.tar.bz2 : qdutil/upfw/rootfs.tar qdutil/
	tar -pcvjf oyofw.tar.bz2 qdutil
	md5sum -b oyofw.tar.bz2 > oyofw.md5sums
qdutil/upfw/rootfs.tar : rootfs/
	tar -cvf qdutil/upfw/rootfs.tar rootfs/*
clean : 
	m oyofw.tar.bz2 oyofw.md5sums qdutil/upfw/rootfs.tar
