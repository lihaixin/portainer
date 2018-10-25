FROM portainer/portainer:1.16.5
MAINTAINER Haixin Lee <docker@lihaixin.name>
LABEL owner=portainer
VOLUME ["/data"]
COPY portainer.crt /certs/portainer.crt
COPY portainer.key /certs/portainer.key
ENTRYPOINT ["/portainer","--templates","https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates.json","--logo","https://www.docker.com/sites/all/themes/docker/assets/images/brand-full.svg","--ssl","--sslcert","/certs/portainer.crt","--sslkey","/certs/portainer.key","-l","owner=portainer"]
