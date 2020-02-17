#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-cbdhealthnetworkpay/cbdhealthnetworkd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/cbdhealthnetworkd docker/bin/
cp $BUILD_DIR/src/cbdhealthnetwork-cli docker/bin/
cp $BUILD_DIR/src/cbdhealthnetwork-tx docker/bin/
strip docker/bin/cbdhealthnetworkd
strip docker/bin/cbdhealthnetwork-cli
strip docker/bin/cbdhealthnetwork-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
