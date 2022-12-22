* pyenv install python时，预先安装编译依赖
```shell
apt-get update
apt-get install git curl \
  build-essential zlib1g-dev libffi-dev libssl-dev \
  libbz2-dev libreadline-dev libsqlite3-dev liblzma-dev \
  libxml2-dev libxmlsec1-dev libxslt-dev -y

```