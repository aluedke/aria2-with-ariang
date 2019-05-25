#!/usr/bin/with-contenv bash

dockerize -template /app/start_darkhttpd.sh:/conf/start_darkhttpd.sh

chmod +x /conf/start_darkhttpd.sh

chown -R app:users /conf
