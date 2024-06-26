#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="myapp_proj44:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag myapp_proj44 $dockerpath
docker login

# Step 3:
# Push image to a docker repository
docker tag $dockerpath olaninnovator/myapp_proj44
docker push olaninnovator/myapp_proj44:latest
