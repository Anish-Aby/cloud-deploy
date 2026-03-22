#!/bin/bash

echo "Logging into ECR..."
aws ecr get-login-password --region ap-south-1 \
| docker login --username AWS --password-stdin 381492143677.dkr.ecr.ap-south-1.amazonaws.com

echo "Pulling latest image..."
docker pull 381492143677.dkr.ecr.ap-south-1.amazonaws.com/myapp:latest

echo "Stopping old container..."
docker stop myapp || true

echo "Removing old container..."
docker rm myapp || true

echo "Starting new container..."
docker run -d -p 8080:8080 --name myapp \
381492143677.dkr.ecr.ap-south-1.amazonaws.com/myapp:latest