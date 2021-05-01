#!/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 判断证书是否存在，没有就用自定义
if [ ! -f "/etc/cert/$DOMAIN/fullchain.crt" ]; then
  /portainer \
  --templates --ssl https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates-2.0.json \
  --logo https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png \
  --ssl --sslcert /fullchain.crt --sslkey /private.key -l owner=portainer \
else
   /portainer \
  --templates --ssl https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates-2.0.json \
  --logo https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png \
  --ssl --sslcert /cert/$DOMAIN/fullchain.crt --sslkey /cert/$DOMAIN/private.key -l owner=portainer \
fi
