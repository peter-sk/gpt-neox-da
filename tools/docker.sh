#!/bin/bash
docker run --runtime=nvidia --rm -it -e NVIDIA_VISIBLE_DEVICES=0,1,2,3 --shm-size=1g --ulimit memlock=-1 --pid=host --privileged --gpus all --mount type=bind,src=$PWD,dst=/gpt-neox gpt-neox $@
