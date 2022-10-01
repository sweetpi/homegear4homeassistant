#/bin/bash
# map config and share to homegear volume mount points
ln -svf -T /config /etc/homegear
mkdir -p /share/homegear/lib
ln -svf -T /share/homegear/lib /var/lib/homegear
mkdir -p /share/homegear/log
ln -svf -T /share/homegear/log /var/log/homegear
/start.sh