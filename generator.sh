#!/bin/bash

while read VERSION; do
  docker build --pull -t $IMAGE_NAME:$VERSION --build-arg RANCHER_COMPOSE_VERSION=$VERSION .
  docker push $IMAGE_NAME:$VERSION
done < <(git ls-remote https://github.com/rancher/rancher-compose.git | grep -o 'refs/tags/v.*' | sed 's:refs/tags/v::' | sort -V)
