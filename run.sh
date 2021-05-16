#!/bin/bash

sudo docker build -t kafka KafkaDocker/Dockerfile

sudo docker build -t deepstream DeepstreamDocker/Dockerfile

sudo docker run -d --name=kafka --network=host kafka

sudo docker run -it --name=deepstream --gpus all -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -w /opt/nvidia/deepstream/deepstream-5.1 deepstream
