#!/bin/bash

echo "************************************************************************"
echo "**************************** Building phase ****************************"
echo "************************************************************************"

docker stop server
docker rm server
pwd
docker-compose down
docker-compose up
