FROM portainer/portainer-ce

ENV TZ=Asia/Shanghai
ENV DOMAIN=testsanjin.xyz
LABEL owner=portainer

VOLUME ["/data"]

COPY private.key /private.key
COPY fullchain.crt /fullchain.crt

ENTRYPOINT ["/portainer"]
CMD ["--help"]
