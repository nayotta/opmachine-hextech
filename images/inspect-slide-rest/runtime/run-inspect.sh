#! /bin/sh

cd /workspace/inspect-slide-rest
python -m venv venv/
. venv/bin/activate

python src/run.py