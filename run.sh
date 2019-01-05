#!/bin/sh


XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

IMAGE=dl

docker run -it --rm -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH \
    -v $PWD:/tmp/dl -w /tmp/dl $IMAGE  bash

# docker run -it --rm -v $PWD:/tmp -w /tmp tensorflow/tensorflow python ./linear_regression_tf.py 
# docker run -it --rm -v $PWD:/tmp -w /tmp tensorflow/tensorflow  bash 
