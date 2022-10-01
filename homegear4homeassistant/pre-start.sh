#/bin/bash
# map config and share to homegear volume mount points
rm -rf /etc/homegear
ln -svf -T /config /etc/homegear

rm -rf /var/lib/homegear
mkdir -p /share/homegear/lib
ln -svf -T /share/homegear/lib /var/lib/homegear

rm -rf /var/log/homegear
mkdir -p /share/homegear/log
ln -svf -T /share/homegear/log /var/log/homegear
/start.sh