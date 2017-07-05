# docker-gdns

![Docker stars](https://img.shields.io/docker/stars/daxingplay/gdns-go.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/daxingplay/gdns-go.svg)
![Docker Automated build](https://img.shields.io/docker/automated/daxingplay/gdns-go.svg)
![Docker Build Status](https://img.shields.io/docker/build/daxingplay/gdns-go.svg)
![ImageLayers Size](https://img.shields.io/imagelayers/image-size/daxingplay/gdns-go/latest.svg)
![ImageLayers Layers](https://img.shields.io/imagelayers/layers/daxingplay/gdns-go/latest.svg)

gdns (Google HTTPS DNS) docker image based on [ayanamist/gdns-go](https://github.com/ayanamist/gdns-go), thanks for his effort.

## usage

```
docker run -d --restart=always -p 53:53/udp -e PROXY=socks5://server:port daxingplay/gdns-go
```

## environments

* PROXY：set proxy for DNS query. example: ss://method:pass@server:port or socks5://server:port etc.