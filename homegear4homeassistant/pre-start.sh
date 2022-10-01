#/bin/bash
# We have only the config directory /data
# map subdirs to homegear volume mount points
mkdir -p /data/etc
mkdir -p /data/lib
mkdir -p /data/log
ln -sv /data/etc /etc/homegear
ln -sv /data/lib /var/lib/homegear
ln -sv /data/log /var/log/homegear
/start.sh