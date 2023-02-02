#! /bin/bash

export APP_CONFIG=/home/cloud/workspaces/inspect-slide-rest/runtime/etc/inspect/config.json

cd /home/cloud/workspaces/inspect-slide-rest/runtime/lib/inspect-slide-rest
. venv/bin/activate

python src/run.py