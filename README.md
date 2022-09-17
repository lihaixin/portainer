## 构建
```
docker buildx build --platform linux/arm64,linux/amd64 -t lihaixin/portainer:ce . --push
```

## 用法

```
docker run -d \
--net=host \
-v /var/run/docker.sock:/var/run/docker.sock \
--name ui \
--restart=always \
lihaixin/portainer:ce \
```

##

https://<ip>:9443

更多参考请访问：

http://bit.ly/2FMu0YX
