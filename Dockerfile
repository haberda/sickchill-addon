FROM linuxserver/sickchill:version-2021.5.10-1

LABEL io.hass.version="2021.5.10" io.hass.type="addon" io.hass.arch="armhf|aarch64|amd64"

ENV XDG_DATA_HOME="/data" \
XDG_CONFIG_HOME="/data"

# modify/copy files

RUN sed -i "s|config|data|g" /etc/cont-init.d/*

RUN sed -i "s|config|data|g" /etc/services.d/sickchill/*

RUN rm -r /media

VOLUME ["/share", "/ssl", "/data", "/media"]
