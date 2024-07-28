#!/bin/bash

set -ex

IMAGE="drwarpman/sinusbot-docker"

if ! docker buildx ls | grep -q sinusbot-builder; then
  docker buildx create --name sinusbot-builder --driver docker-container
fi

docker buildx build -t "$IMAGE":discord --builder=sinusbot-builder --platform linux/amd64 --no-cache --push ./discord
docker buildx build -t "$IMAGE":latest --builder=sinusbot-builder --platform linux/amd64 --no-cache --push .
