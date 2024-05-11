#!/bin/bash -eux

cd ~/Artemis/docker/tf
docker build -t tf -f Dockerfile ../..
cd -