# portainer
让容器管理变得更容易，支持任何云、数据中心或设备中的 Docker、Kubernetes、Swarm 和 Nomad 上轻松部署、配置容器

- 内置国内用户常用模板
- 默认支持https访问
- 支持管理多台宿主机

## 构建
```
docker buildx build --platform linux/arm64,linux/amd64 -t lihaixin/portainer:ce https://github.com/lihaixin/portainer.git --push
```

## 用法

### CLI
```
docker run -d \
--net=host \
-v /var/run/docker.sock:/var/run/docker.sock \
-v portainer_data:/data \
--name ui \
--restart=always \
lihaixin/portainer:ce
```

### docker-compose

```
version: "3.7"
services:
  nps:
    image: lihaixin/portainer:ce
    container_name: ui
    hostname: ui
    restart: unless-stopped
    network_mode: "host"
    volumes:
      - portainer_data:/data                         # 永久存放portainer数据位置
      - /var/run/docker.sock:/var/run/docker.sock    # docker.sock
volumes:
  portainer_data:
```

## 访问

https://< ip >:9443

## 升级和备份

升级
```
docker pull lihaixin/portainer:ce
然后重启容器
```
备份；

```
通过界面导出数据，然后在新主机上安装，开始初始化导入数据
```
更多参考请访问：

http://bit.ly/2FMu0YX
