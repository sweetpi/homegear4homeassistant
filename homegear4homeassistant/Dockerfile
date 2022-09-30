FROM ghcr.io/hassio-addons/debian-base:6.1.2
RUN apt-get update && apt-get -y install apt-transport-https apt-utils wget ca-certificates gnupg libzip4 libavahi-client3 libavahi-client-dev locales lsb-release
# Download and install Homegear's package validation key
RUN curl -fsSL https://apt.homegear.eu/Release.key | gpg --dearmor -o /usr/share/keyrings/homegear-archive-keyring.gpg

# Add Homegear's repository to APT
RUN echo 'deb [signed-by=/usr/share/keyrings/homegear-archive-keyring.gpg] https://apt.homegear.eu/debian/bullseye/homegear/stable/ bullseye main' > /etc/apt/sources.list.d/homegear.list

# Update package information
RUN apt update

# Install Homegear with all modules
RUN apt-get -y install homegear homegear-management homegear-nodes-core homegear-nodes-extra homegear-homematicbidcos homegear-homematicwired homegear-insteon homegear-max homegear-philipshue homegear-sonos homegear-kodi homegear-ipcam homegear-beckhoff homegear-knx homegear-enocean homegear-intertechno homegear-nanoleaf homegear-ccu homegear-mbus homegear-influxdb


#VOLUME ["/etc/homegear", "/var/lib/homegear", "/var/log/homegear"]

COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/bin/bash", "-c", "/start.sh"]

EXPOSE 2001 2002 2003
