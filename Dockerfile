FROM portainer/portainer-ce
MAINTAINER Haixin Lee <docker@lihaixin.name>
ENV DOMAIN=testsanjin.xyz
LABEL owner=portainer
VOLUME ["/data"]
COPY private.key /private.key
COPY fullchain.crt /fullchain.crt
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
