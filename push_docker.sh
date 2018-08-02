#!/usr/bin/env bash

set -e

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

# docker push marekchen/flutter:base
docker push marekchen/flutter:0.5.7
docker push marekchen/flutter:latest