# /usr/local/sbin/s3c_3G_cmd 1
# sleep 9
if [ -f /tmp/cdma_h18 ]; then
    pppd file /tmp/cdma_h18
else
    pppd file /etc/ppp/cdma_h18
fi
