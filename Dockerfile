FROM portainer/portainer-ce

ENV TZ=Asia/Shanghai
ENV DOMAIN=testsanjin.xyz
LABEL owner=portainer

VOLUME ["/data"]

COPY private.key /cert/$DOMAIN/private.key
COPY fullchain.crt /cert/$DOMAIN/fullchain.crt

ENTRYPOINT ["/portainer"]
CMD ["--templates","https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates-2.0.json","--logo","https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png","--ssl","--sslcert","/cert/$DOMAIN/fullchain.crt","--sslkey","/cert/$DOMAIN/private.key","-l","owner=portainer"]
