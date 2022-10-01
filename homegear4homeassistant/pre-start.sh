#/bin/bash
# We have only the config directory /data
# map subdirs to homegear volume mount points
mkdir -p /data/etc
mkdir -p /data/lib
mkdir -p /data/log
ln -snv /data/etc /etc/homegear
ln -snv /data/lib /var/lib/homegear
ln -snv /data/log /var/log/homegear
/start.sh