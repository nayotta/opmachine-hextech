#! /bin/bash

export CONFIG=/home/cloud/workspaces/inspect-slide-rest/runtime/etc/isr-camera/config.yaml

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

cd /home/cloud/workspaces/inspect-slide-rest/runtime/lib/isr-camera
(eval "$(pyenv init -)" && pyenv shell 3.10.7 && python -m venv venv)
. venv/bin/activate

python src/run.py