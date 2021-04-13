FROM portainer/portainer-ce
MAINTAINER Haixin Lee <docker@lihaixin.name>
LABEL owner=portainer
VOLUME ["/data"]
COPY server.pem /certs/server.pem
COPY server-key.pem /certs/server-key.pem
ENTRYPOINT ["/portainer","--templates","https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates-2.0.json","--admin-password=$2y$05$uyizUiVCA1uFYYgP2sG3nep51lIKNtjxP5967AMMljT2mwhJmiHgS","--logo","https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png","--ssl","--sslcert","/certs/server.pem","--sslkey","/certs/server-key.pem","-l","owner=portainer"]
