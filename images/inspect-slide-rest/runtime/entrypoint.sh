#! /bin/sh
# config_dir=${CONFIG_DIR}

echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ---------- run watch ffmpeg ---------"
/workspace/watch-ffmpeg.sh &


echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ---------- run meta ---------"
/workspace/run-meta.sh &

sleep '10s'

echo "[$(date +"%Y-%m-%dT%H:%M:%S-%Z")] ---------- run inspecet-slide-rest -------"
/workspace/run-inspect.sh &



while sleep 20; do
        ps aux |grep metathings |grep device |grep -q -v grep
        PROCESS_1_STATUS=$?
        ps aux |grep metathings |grep module |grep -q -v grep
        PROCESS_2_STATUS=$?
        # ps aux |grep python |grep run |grep -q -v grep
        PROCESS_3_STATUS=$?
        # If the greps above find anything, they exit with 0 status
        # If they are not both 0, then something is wrong
        echo "current process status: P1 $PROCESS_1_STATUS | P2 $PROCESS_2_STATUS | P3 $PROCESS_3_STATUS"
        if [ $PROCESS_1_STATUS -ne 0 -o $PROCESS_2_STATUS -ne 0 -o $PROCESS_3_STATUS -ne 0 ]; then
                echo "One of the processes has already exited. P1 $PROCESS_1_STATUS | P2 $PROCESS_2_STATUS | P3 $PROCESS_3_STATUS"
                pgrep -la -f metathings
                pid1=$(pgrep -f "metathings.*device")
                pid2=$(pgrep -f "metathings.*module")
                pid3=$(pgrep -f "python.*run")
                echo "kill process device(${pid1}), module(${pid2}), inspect(${pid3})"
                kill -9 ${pid1} ${pid2} ${pid3}
                exit 1
        fi
done
