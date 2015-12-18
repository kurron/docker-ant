#!/bin/bash

CMD="docker run \
       --rm \
       --name ant \
       --net "host" \
       --user 1000:1000 \
       --volume $HOME:/home/developer \
       --volume $(pwd):/pwd \
       kurron/docker-ant:latest"

#echo $CMD
eval $CMD $*
