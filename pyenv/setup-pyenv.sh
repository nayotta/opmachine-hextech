#! /bin/bash


# install dependencies
apt-get update
apt-get install git curl tree \
  build-essential zlib1g-dev libffi-dev libssl-dev \
  libbz2-dev libreadline-dev libsqlite3-dev liblzma-dev \
  libxml2-dev libxmlsec1-dev libxslt-dev -y

# install pyenv
curl https://pyenv.run | bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# setup pyenv environment
cat << EOF >> ${LOCAL_ENV}
export PYENV_ROOT="$HOME/.pyenv"
echo $PATH
echo $PYENV_ROOT/bin
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF