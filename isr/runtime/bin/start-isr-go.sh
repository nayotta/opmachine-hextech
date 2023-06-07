#! /bin/bash

export APP_WORKDIR=/home/cloud/workspaces/isr/runtime
export APP_CONFIG=${APP_WORKDIR}/etc/isr-go/config.yaml
${APP_WORKDIR}/bin/isr-go.amd64.linux
