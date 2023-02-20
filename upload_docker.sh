#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="thinhvu2511/project"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag project $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
