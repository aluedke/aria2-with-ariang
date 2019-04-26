FROM kingedgar/aria2-daemon

LABEL maintainer="kingedgar@gmail.com"
RUN apk update && \
	apk add wget libarchive-tools npm gulp && \
        mkdir -p /aria2-webui && \
        cd /aria2-webui && \
	wget -qO- https://github.com/mayswind/AriaNg/releases/download/1.1.0/AriaNg-1.1.0.zip | bsdtar -xvf- && \
    	apk del wget && \
	apk add --update darkhttpd

ADD root/ /

RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*

VOLUME ["/download"]
VOLUME ["/conf"]
EXPOSE 8989
