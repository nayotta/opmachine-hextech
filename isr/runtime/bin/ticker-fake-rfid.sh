#! /bin/bash


curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "type": "rfid",
    "data": {
        "EPC": "xxxx",
        "PC": "3000",
        "RSSI": 51
    }
}'


sleep 14s

curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "type": "rfid",
    "data": {
        "EPC": "xxx2",
        "PC": "3000",
        "RSSI": 51
    }
}'

sleep 14s

curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "type": "rfid",
    "data": {
        "EPC": "xxxx3",
        "PC": "3000",
        "RSSI": 51
    }
}'
