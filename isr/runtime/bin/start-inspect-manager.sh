#! /bin/bash

export APP_CONFIG=/home/cloud/workspaces/inspect-slide-rest/runtime/etc/inspect/config.json

cd /home/cloud/workspaces/inspect-slide-rest/runtime/lib/inspect-slide-rest
(eval "$(pyenv init -)" && pyenv shell 3.10.7 && python -m venv venv)
. venv/bin/activate

python src/run.py