## 构建
```
docker buildx build --platform linux/arm64,linux/amd64 -t lihaixin/portainer:ce https://github.com/lihaixin/portainer.git --push
```

# portainer
让容器管理变得更容易，支持任何云、数据中心或设备中的 Docker、Kubernetes、Swarm 和 Nomad 上轻松部署、配置容器

- 内置国内用户常用模板
- 默认支持https访问
- 支持管理多台宿主机

## 用法

```
docker run -d \
--net=host \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data \
--name ui \
--restart=always \
lihaixin/portainer:ce \
```

## 访问

https://< ip >:9443

更多参考请访问：

http://bit.ly/2FMu0YX
