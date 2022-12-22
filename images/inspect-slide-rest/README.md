### general

```shell

cd /workspace/meta
MT_STAGE=prod ./metathings device run -c config/device.yaml
MTC_STAGE=prod ./metathings module run -c config/module.yaml

or

DEVICE_LISTEN_PORT=5002 ./run.sh ./config

```


### docker

* Prepare
  * 下载soda服务：[inspect-slide-reset](#https://github.com/nayotta/inspect-slide-rest/releases)
  * 下载静态编译版本：[ffmpeg(v4.2.2)](#https://www.johnvansickle.com/ffmpeg/old-releases/)
  * 下载metathings客户端：[metathings](#https://github.com/nayotta/metathings/releases)
  * 解压`inspect-slide-reset`至`runtime/inspect-slide-reset`
  * 解压`ffmpeg(v4.2.2)`至`runtime/ffmpeg4`
  * 解压`metathings`至`runtime/meta`

* Confiuration
  * 配置`inspect-slide-reset/etc/config.json`
  * 配置`meta/config/device.yaml`, `meta/config/module.yaml`

* Run

```shell

cd inspect-slide-reset

docker pull ghcr.io/nayotta/op-hextech-python:3.10.7-slim

docker run -d --restart always --name inspect-slide-reset-mixer -p 10980:8000 -v $PWD/runtime/entrypoint.sh:/entrypoint.sh -v $PWD/runtime:/workspace --entrypoint /entrypoint.sh ghcr.io/nayotta/op-hextech-python:3.10.7-slim


curl -X POST http://127.0.0.1:10980/

```

* 树莓派端口转发
  * 参考：https://jkboy.com/archives/5114.html