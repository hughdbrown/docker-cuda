#!/bin/sh -e

docker run -t -i \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    cuda /bin/sh
