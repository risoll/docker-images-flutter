#!/usr/bin/env bash

set -e

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

# docker push risoll/flutter:base
docker push risoll/flutter:0.9.4
docker push risoll/flutter:latest