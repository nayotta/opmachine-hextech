#! /bin/bash

export APP_WORKDIR=/home/cloud/workspaces/isr/runtime

MTC_STAGE=prod ${APP_WORKDIR}/bin/metathings.amd64.linux module run --config ${APP_WORKDIR}/etc/meta/module.yaml