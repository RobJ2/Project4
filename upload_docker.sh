#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath='04193007/api'

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login
sudo docker image tag app "${dockerpath}"

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath
