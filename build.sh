#!/bin/bash
cd `dirname $0`
cp -r ~/.ssh ./
docker build -t docker-git .
rm -rf .ssh
