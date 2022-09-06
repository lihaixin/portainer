## 构建
```
docker buildx build --platform linux/arm64,linux/amd64 -t lihaixin/portainer:ce . --push
```

## 用法

docker run -d -p 9000:9000 \

-v /var/run/docker.sock:/var/run/docker.sock \
--label owner=portainer \
--name ui \
--restart=always \
lihaixin/portainer:ce -l owner=portainer \
--ssl --sslcert /certs/portainer.crt --sslkey /certs/portainer.key 

更多参考请访问：

http://bit.ly/2FMu0YX
