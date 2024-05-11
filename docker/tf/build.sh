#!/bin/bash -eux

cd ~/Artemis/docker/tf
docker build -t tf-image -f Dockerfile ../..
cd -