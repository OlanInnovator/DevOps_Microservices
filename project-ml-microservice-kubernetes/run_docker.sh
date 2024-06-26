#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t myapp_proj44 .
docker tag myapp_proj44 myapp_proj44:latest

# Step 2: 
# List docker images
docker image ls
docker rmi $(docker images -f "dangling=true" -q)

# Step 3: 
# Run flask app
python3.7 -m flask run