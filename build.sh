#!/bin/bash
cd `dirname $0`
cp -r ~/.ssh ./
docker build -t docker-git .
if [[ $(pwd) != $HOME ]]; then 
  rm -rf .ssh
fi
