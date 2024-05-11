#!/bin/bash -eux

cd ~/Artemis/docker/torch
docker build -t torch -f Dockerfile ../..
cd -