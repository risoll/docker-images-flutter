#!/usr/bin/env bash

set -e

# pull to make sure we are not rebuilding for nothing
# docker pull risoll/flutter:base

# docker build --tag risoll/flutter:base base
docker build --tag risoll/flutter:0.9.4  --tag risoll/flutter:latest ./
