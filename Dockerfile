FROM linuxserver/sickchill:2021.3.10.post1-ls57

LABEL io.hass.version="ls57" io.hass.type="addon" io.hass.arch="armhf|aarch64|amd64"

ENV XDG_DATA_HOME="/data" \
XDG_CONFIG_HOME="/data"

# modify/copy files

RUN sed -i "s|config|data|g" /etc/cont-init.d/*

RUN sed -i "s|config|data|g" /etc/services.d/sickchill/*

RUN rm -r /media

VOLUME ["/share", "/ssl", "/data", "/media"]
