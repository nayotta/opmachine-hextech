#! /bin/sh

while sleep 5; do
  echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ######### watch ffmpeg #########"
  ps -ef |grep ffmpeg
  echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ######### watch ffmpeg end #########"
done