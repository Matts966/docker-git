#!/bin/bash
cd `dirname $0`
./build.sh
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock \
    docker-git /bin/sh -c "git clone https://github.com/vlang/v; \
        cd v; \
        docker build -t vlang . ; \
        docker run --rm -it vlang:latest v;"
