FROM --platform=${TARGETPLATFORM} portainer/portainer-ce

ENV TZ=Asia/Shanghai
ENV DOMAIN=testsanjin.xyz
LABEL owner=portainer

VOLUME ["/data"]

COPY private.key /cert/private.key
COPY fullchain.crt /cert/fullchain.crt

ENTRYPOINT ["/portainer"]
CMD ["--templates","https://ghproxy.com/https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates-2.0.json","--logo","https://ghproxy.com/https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png","-l","owner=portainer"]
