#!/bin/bash

VERSIONS=("0.8.6" "0.12.4")

for VERSION in "${VERSIONS[@]}"
do
  docker build --pull -t $IMAGE_NAME:$VERSION --build-arg RANCHER_COMPOSE_VERSION=$VERSION .
  docker push $IMAGE_NAME:$VERSION
done
