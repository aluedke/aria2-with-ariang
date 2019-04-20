FROM fanningert/aria2-daemon

MAINTAINER fanningert <thomas@fanninger.at>

RUN apk update && \
	apk add wget libarchive-tools && \
        mkdir -p /aria2-webui && \
        cd /aria2-webui && \
	wget -qO- https://github.com/mayswind/AriaNg/releases/download/1.0.3/AriaNg-1.0.3.zip | bsdtar -xvf- && \
    	apk del wget && \
	apk add --update darkhttpd

ADD root/ /

RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*

EXPOSE 8989
