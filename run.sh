#!/bin/bash

sudo docker build -t kafka KafkaDocker/Dockerfile

sudo docker build -t deepstream DeepstreamDocker/Dockerfile

sudo docker run -it --name=kafka

sudo docker run -it --name=deepstream
