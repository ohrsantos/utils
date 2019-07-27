#!/bin/bash

USER=ubuntu

curl -fsSL https://get.docker.com | bash

docker info

usermod -aG docker $USER
