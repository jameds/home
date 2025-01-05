mkdir -p /etc/ld.so.conf.d
echo '/usr/local/lib' > /etc/ld.so.conf.d/usr-local.conf
ldconfig
