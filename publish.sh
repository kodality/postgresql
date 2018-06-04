#!/bin/bash
this=`pwd`/`dirname $0`

repo="kodality"
name="postgres"
tag="10.3"

#docker login || exit 1
docker build -t $repo/$name . || exit 1

docker tag $repo/$name $repo/$name:$tag &&\
docker push $repo/$name:$tag
