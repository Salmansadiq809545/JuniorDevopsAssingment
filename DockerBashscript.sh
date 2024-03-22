# This is just a Examle Bash Script for deploying Containarized application
#!/bin/bash

IMAGE_NAME="salman8095/new"
TAG="latest"
CONTAINER_NAME="salmanproject"
PORT_MAPPING="8084:8091"


docker stop "$CONTAINER_NAME"
docker rm "$CONTAINER_NAME"
docker build -t "$IMAGE_NAME:$TAG" .
docker run -itd -p "$PORT_MAPPING" --name "$CONTAINER_NAME" "$IMAGE_NAME"
