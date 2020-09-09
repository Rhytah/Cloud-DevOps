#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=rhytah/micro-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
# docker tag local-image:micro-api new-repo:latest

# docker push new-repo:micro-api
# docker push rhytah/micro-api:latest

docker tag micro-api rhytah/micro-api 
# docker push new-repo:latest
docker push $dockerpath