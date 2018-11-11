#!/usr/bin/env bash

set -e

docker login

# docker push risol/flutter:base
docker push risol/flutter:0.10.2
docker push risol/flutter:latest