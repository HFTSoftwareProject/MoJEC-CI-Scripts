#!/bin/bash
# Stop the running backend
docker stop mojec-backend

# Delete the existing container
docker rm mojec-backend

# Pull the new version from DockerHub
docker pull hftstuttgart/mojec-backend

# Build the container and start it
docker run -p 8080:8080 --name mojec-backend -hftstuttgart/mojec-backend:latest
