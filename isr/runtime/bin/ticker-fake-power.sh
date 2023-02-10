#! /bin/bash

# 高电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 12.7681,
        "charge_current": 0.09700195,
        "charge_voltage": 12.7481
    },
    "type": "charge"
}'

sleep 15s

# 中电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 12.0681,
        "charge_current": 0.09700195,
        "charge_voltage": 12.0481
    },
    "type": "charge"
}'

sleep 15s

# 低电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 11.4681,
        "charge_current": 0.09700195,
        "charge_voltage": 11.4481
    },
    "type": "charge"
}'

sleep 15s

# 空电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 10.9681,
        "charge_current": 0.09700195,
        "charge_voltage": 10.9481
    },
    "type": "charge"
}'

sleep 15s

# 充电低电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 11.2681,
        "charge_current": 0.69700195,
        "charge_voltage": 11.6481
    },
    "type": "charge"
}'


sleep 15s

# 充电中电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 11.9681,
        "charge_current": 0.69700195,
        "charge_voltage": 12.3481
    },
    "type": "charge"
}'

sleep 15s

# 充电中电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 12.4681,
        "charge_current": 0.69700195,
        "charge_voltage": 12.9481
    },
    "type": "charge"
}'

sleep 15s

# 高电量
curl --location --request POST 'http://127.0.0.1:9100/v1/sensor/frames' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "bat_voltage": 12.7681,
        "charge_current": 0.09700195,
        "charge_voltage": 12.7481
    },
    "type": "charge"
}'

