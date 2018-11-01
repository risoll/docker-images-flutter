#!/usr/bin/env bash

set -e

docker login

# docker push risol/flutter:base
docker push risol/flutter:0.9.4
docker push risol/flutter:latest