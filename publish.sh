#!/bin/bash

repo="kodality"
name="postgres"
tag="13.2"

#docker login || exit 1
docker build -t $repo/$name . || exit 1

docker tag $repo/$name $repo/$name:$tag && \
docker push $repo/$name:$tag
