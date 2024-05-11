#!/bin/bash -eux

cd ~/Artemis/docker/torch
docker build -t torch-image -f Dockerfile ../..
cd -