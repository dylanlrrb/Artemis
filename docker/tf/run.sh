#!/bin/bash -eux

docker run --name Demeter \
  -v ~/Artemis:/workspace \
  -v ~/Artemis/extensions:/root/.vscode-server/extensions \
  -v ~/Demeter/src/.bash_profile:/root/.bash_profile \
  -v ~/.cache/tensorflow_datasets:/root/tensorflow_datasets \
  -v ~/.cache/datasets:/root/datasets \
  -v ~/.cache/keras:/root/.keras \
  -v ~/.ngrok2:/root/.ngrok2 \
  -v ~/.aws:/root/.aws \
  --env-file ~/.docker-env \
  --gpus all -it -d \
  --rm tf