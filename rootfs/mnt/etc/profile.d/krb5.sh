if ! echo ${PATH} | grep -q /usr/kerberos/bin ; then
	PATH=/usr/kerberos/bin:${PATH}
fi
if ! echo ${PATH} | grep -q /usr/kerberos/sbin ; then
	if [ `id -u` = 0 ] ; then
		PATH=/usr/kerberos/sbin:${PATH}
	fi
fi
