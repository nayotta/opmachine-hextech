#!/bin/sh

# Start the first process
MT_STAGE=prod ./metathings device run --config "$1/device.yaml" &
status=$?
if [ $status -ne 0 ]; then
        echo "Failed to start my_first_process: $status"
        exit $status
fi

sleep '1s'

retry=0
while sleep 10; do
        DEVICE_PID=$(pgrep -f "metathings.*device")
        echo "current device(pid: ${DEVICE_PID}, port: ${DEVICE_LISTEN_PORT})"
        netstat -tpnl |grep metathings |grep -E "$DEVICE_LISTEN_PORT.*LISTEN" |grep -v grep -q

        # ubuntu use
        # lsof -w -p $DEVICE_PID -a -i tcp |grep -E "$DEVICE_LISTEN_PORT.*LISTEN" |grep -v grep -q
        STATUS=$?
        echo "device status: $STATUS"
        if [ $STATUS -eq 0 ]; then
                break
        fi
        retry=$(($retry + 1))
        if [ $retry -eq 15 ]; then
                echo "retry exceed 15 count, exit."
                exit 1
        fi
        echo "wait device complete start, to retry($retry)"
done

# Start the second process
MTC_STAGE=prod ./metathings module run --config "$1/module.yaml" &
status=$?
if [ $status -ne 0 ]; then
        echo "Failed to start my_second_process: $status"
        exit $status
fi

# Naive check runs checks once a minute to see if either of the processes exited.
# This illustrates part of the heavy lifting you need to do if you want to run
# more than one service in a container. The container exits with an error
# if it detects that either of the processes has exited.
# Otherwise it loops forever, waking up every 60 seconds
sleep '1s'


# while sleep 20; do
#         ps aux |grep metathings |grep device |grep -q -v grep
#         PROCESS_1_STATUS=$?
#         ps aux |grep metathings |grep module |grep -q -v grep
#         PROCESS_2_STATUS=$?
#         # If the greps above find anything, they exit with 0 status
#         # If they are not both 0, then something is wrong
#         echo "current process status: P1 $PROCESS_1_STATUS | P2 $PROCESS_2_STATUS"
#         if [ $PROCESS_1_STATUS -ne 0 -o $PROCESS_2_STATUS -ne 0 ]; then
#                 echo "One of the processes has already exited. P1 $PROCESS_1_STATUS | P2 $PROCESS_2_STATUS"
#                 pgrep -la -f metathings
#                 pid1=$(pgrep -f "metathings.*device")
#                 pid2=$(pgrep -f "metathings.*module")
#                 echo "kill process device(${pid1}), module(${pid2})"
#                 kill -9 ${pid1} ${pid2}
#                 exit 1
#         fi
# done
