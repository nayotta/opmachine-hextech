#! /bin/sh
# config_dir=${CONFIG_DIR}

echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ---------- run watch ffmpeg ---------"
/workspace/watch-ffmpeg.sh &


echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ---------- run meta ---------"
/workspace/run-meta.sh &

sleep '10s'

echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ---------- run inspecet-slide-rest -------"
/workspace/run-inspect.sh