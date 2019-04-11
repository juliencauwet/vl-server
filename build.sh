#!/bin/bash

echo "************************************************************************"
echo "**************************** Building phase ****************************"
echo "************************************************************************"

echo "pwd:"
pwd
echo "ls:"
ls

docker  run --rm \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v ~/.m2/repository:/root/.m2/ \
        -w /vl-server \
        maven:3-alpine "$@"

#-v $PWD:/config-server \

#docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app  maven:3-alpine "$@"
