##用法

	mkdir -p /opt/portainer
	docker run -d -p 9000:9000 --label owner=portainer \
	       --restart=always --name=ui \
	       -v /var/run/docker.sock:/var/run/docker.sock \
	       -v /opt/portainer:/data \
	       portainer/portainer:1.15.5

#	docker run -d   --name watchtower   -v /var/run/docker.sock:/var/run/docker.sock   v2tec/watchtower --cleanup ui
