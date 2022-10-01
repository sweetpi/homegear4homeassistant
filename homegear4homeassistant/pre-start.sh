#/bin/bash
# map config and share to homegear volume mount points
ln -sv /config /etc/homegear
mkdir -p /share/homegear/lib
ln -sv /share/homegear/lib /var/lib/homegear
mkdir -p /share/homegear/log
ln -sv /share/homegear/log /var/log/homegear
/start.sh