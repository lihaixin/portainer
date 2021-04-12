FROM portainer/portainer:ce
MAINTAINER Haixin Lee <docker@lihaixin.name>
LABEL owner=portainer
VOLUME ["/data"]
COPY portainer.crt /certs/portainer.crt
COPY portainer.key /certs/portainer.key
ENTRYPOINT ["/portainer","--templates","https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates2.json","--admin-password='$2y$05$OGYzZtraYL.s2kKErrZXqOwJ1sa8v1aJqW.7V3u.fLHF4SK0qHI3q","--logo","https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png","--ssl","--sslcert","/certs/portainer.crt","--sslkey","/certs/portainer.key","-l","owner=portainer"]
