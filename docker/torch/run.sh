#!/bin/bash -eux

docker run --name Artemis \
  -v ~/Artemis:/workspace \
  -v ~/Artemis/extensions:/root/.vscode-server/extensions \
  -v ~/Demeter/src/.bash_profile:/root/.bash_profile \
  -v ~/.cache/torch/checkpoints:/root/.cache/torch/hub/checkpoints \
  -v ~/.cache/datasets:/root/datasets \
  -v ~/.ngrok2:/root/.ngrok2 \
  -v ~/.aws:/root/.aws \
  --env-file ~/.docker-env \
  --gpus all -it -d \
  --rm torch