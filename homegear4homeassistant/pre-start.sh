#/bin/bash
# We have only the config directory /data
# map subdirs to homegear volume mount points
mkdir -p /data/etc
mkdir -p /data/lib
mkdir -p /data/log
ln -snv /etc/homegear /data/etc
ln -snv /var/lib/homegear /data/lib
ln -snv /var/log/homegear /data/log
/start.sh