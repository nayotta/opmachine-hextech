#! /bin/bash

export APP_CONFIG=/home/cloud/workspaces/inspect-slide-rest/runtime/etc/inspect/config.json

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

cd /home/cloud/workspaces/inspect-slide-rest/runtime/lib/inspect-slide-rest
(eval "$(pyenv init -)" && pyenv shell 3.10.7 && python -m venv venv)
. venv/bin/activate

python src/run.py