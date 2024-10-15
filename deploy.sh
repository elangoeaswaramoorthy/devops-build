#!/bin/bash

# Variables
DOCKER_USERNAME="elangoeaswaramoorthy"
IMAGE_NAME="elangoeaswaramoorthy/dev"
VERSION="latest"  # Change to the desired version if needed

# Step 1: Pull the latest image from Docker Hub
echo "Pulling Docker image from Docker Hub..."
docker pull $DOCKER_USERNAME/$IMAGE_NAME:$VERSION

# Step 2: Stop and remove any existing container (optional)
echo "Stopping and removing the old container (if any)..."
docker stop $IMAGE_NAME
docker rm $IMAGE_NAME

# Step 3: Run the new container
echo "Running the new container..."
docker run -d --name $IMAGE_NAME -p 80:80 $DOCKER_USERNAME/$IMAGE_NAME:$VERSION

echo "Deployment completed successfully!"
