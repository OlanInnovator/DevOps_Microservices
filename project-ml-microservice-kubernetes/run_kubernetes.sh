#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="olaninnovator/myapp_proj3:latest"

echo $dockerpath
# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deploy python-mykubemetes --image=$dockerpath
echo $dockerpath

## See the status
kubectl get deploy,rs,svc,pods

# Step 3:
# List kubernetes pods
kubectl get nodes

#aws-node-6l4pg
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/python-mykubemetes --address 0.0.0.0 5000:5000
