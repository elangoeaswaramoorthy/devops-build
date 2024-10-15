#!/bin/bash

# Variables
DOCKER_USERNAME="elangoeaswaramoorthy"
IMAGE_NAME="elangoeaswaramoorthy/dev"
VERSION="latest"  # Change to the desired version if needed

# Step 1: Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME:$VERSION .

# Step 2: Log in to Docker Hub
echo "Logging in to Docker Hub..."
docker login -u $DOCKER_USERNAME

# Step 3: Push the image to Docker Hub
echo "Pushing Docker image to Docker Hub..."
docker push $IMAGE_NAME:$VERSION

echo "Build and push completed successfully!"
