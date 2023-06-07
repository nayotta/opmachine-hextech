#! /bin/bash

export APP_WORKDIR=/home/cloud/workspaces/isr/runtime
export CONFIG=${APP_WORKDIR}/etc/isr-camera/config.yaml

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

cd ${APP_WORKDIR}/lib/isr-camera
# (eval "$(pyenv init -)" && pyenv shell 3.10.7 && python -m venv venv)
. venv/bin/activate

python src/run.py
