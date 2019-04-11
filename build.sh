#!/bin/bash

echo "************************************************************************"
echo "**************************** Building phase ****************************"
echo "************************************************************************"

pwd
ls

docker  run --rm \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $PWD/config-server:/config-server \
        -v ~/.m2/repository:/root/.m2/ \
        maven:3-alpine "$@"
