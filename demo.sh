#!/bin/bash
cd `dirname $0`
./build.sh
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock \
    docker-git /bin/sh -c "git clone https://github.com/vlang/v; \
        cd v; \
        git checkout 7918a790b4a1792c67d9ca04fab3425f1454eab9; \
        docker build -t vlang . ; \
        docker run --rm -it vlang:latest v;"
