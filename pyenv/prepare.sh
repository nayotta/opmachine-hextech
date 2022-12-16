#! /bin/bash

mkdir -p opt

cat << EOF >> ${LOCAL_ENV}
export ARTIFACT_OPT=${PWD}/opt
EOF

echo ${PWD}
echo ${ARTIFACT_OPT}