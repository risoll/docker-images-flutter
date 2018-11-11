#!/usr/bin/env bash

set -e

# pull to make sure we are not rebuilding for nothing
# docker pull risol/flutter:base

# docker build --tag risol/flutter:base base
docker build --tag risol/flutter:0.10.2  --tag risol/flutter:latest ./
