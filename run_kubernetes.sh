#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="04193007/api"

# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run api --image="04193007/api" --port=80 --labels app=api

##kubectl run api --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward api 8000:80
#kubectl expose deployment api --type=LoadBalancer --port=8080
