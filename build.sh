#!/bin/bash

echo "************************************************************************"
echo "**************************** Building phase ****************************"
echo "************************************************************************"

docker  run --rm \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $PWD/config-server:/config-server \
        -v ~/.m2/repository:/root/.m2/ \
        -w /config-server maven:3-alpine "$@"
