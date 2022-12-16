#! /bin/bash

mkdir -p opt

cat << EOF >> $HOME/.bashrc
export ARTIFACT_OPT=${PWD}/opt
EOF

echo ${PWD}
echo ${ARTIFACT_OPT}