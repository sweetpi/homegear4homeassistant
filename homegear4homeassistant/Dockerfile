FROM homegear/homegear:stable
COPY pre-start.sh /pre-start.sh
RUN chmod +x /pre-start.sh
RUN rm -rf /etc/homegear /var/lib/homegear /var/log/homegear
RUN ln -svf -T /config /etc/homegear
RUN ln -svf -T /share/homegear/lib /var/lib/homegear
RUN ln -svf -T /share/homegear/log /var/log/homegear
VOLUME [ "/data" ]
ENTRYPOINT ["/bin/bash", "-c", "/pre-start.sh"]