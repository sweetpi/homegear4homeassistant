FROM homegear/homegear:stable
COPY pre-start.sh /pre-start.sh
RUN chmod +x /pre-start.sh
ENTRYPOINT ["/bin/bash", "-c", "/pre-start.sh"]