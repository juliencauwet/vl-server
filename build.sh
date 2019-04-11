#!/bin/bash

echo "************************************************************************"
echo "**************************** Building phase ****************************"
echo "************************************************************************"

pwd
ls
cat pom.xml

cd ..

pwd

docker  run --rm \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $PWD/pom.xml:/config-server/pom.xml \
        -v $PWD/src:/config-server/src \
        -v ~/.m2/repository:/root/.m2/ \
        -w /config-server \
        maven:3-alpine "$@"


#docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app  maven:3-alpine "$@"
