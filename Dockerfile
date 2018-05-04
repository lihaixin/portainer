FROM portainer/portainer:latest
MAINTAINER Haixin Lee <docker@lihaixin.name>
ADD favicon.ico /ico
ENTRYPOINT ["/portainer","--templates","https://raw.githubusercontent.com/lihaixin/dockerfile/master/templates.json","--logo","https://www.docker.com/sites/all/themes/docker/assets/images/brand-full.svg"]
