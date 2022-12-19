#! /bin/bash

mkdir -p opt

echo 'export ARTIFACT_OPT=${PWD}/opt' >> ${LOCAL_ENV}

echo ${PWD}
echo ${WORKDIR}
echo ${ARTIFACT_OPT}