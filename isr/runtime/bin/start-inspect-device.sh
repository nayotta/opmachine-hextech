#! /bin/bash

export APP_WORKDIR=/home/cloud/workspaces/isr/runtime

MT_STAGE=prod ${APP_WORKDIR}/bin/metathings.amd64.linux device run --config ${APP_WORKDIR}/etc/meta/device.yaml