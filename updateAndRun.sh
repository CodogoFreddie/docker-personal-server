#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cd $DIR

git reset --hard HEAD
git checkout master
git pull

docker-compose pull
docker-compose up --build
