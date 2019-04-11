#!/bin/bash

echo "************************************************************************"
echo "**************************** Building phase ****************************"
echo "************************************************************************"

pwd
ls
cat pom.xml

docker  run --rm \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $PWD/:/config-server/ \
        -v ~/.m2/repository:/root/.m2/ \
        -w /config-server \
        maven:3-alpine "$@"


#docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app  maven:3-alpine "$@"
