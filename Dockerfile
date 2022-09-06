FROM --platform=${TARGETPLATFORM} portainer/portainer:latest
MAINTAINER Haixin Lee <docker@lihaixin.name>
LABEL owner=portainer
# ADD favicon.ico /ico
ENTRYPOINT ["/portainer","--templates","https://ghproxy.com/https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates-2.0.json","--logo","https://ghproxy.com/https://raw.githubusercontent.com/lihaixin/portainer/master/docker.png","-l","owner=portainer"]
