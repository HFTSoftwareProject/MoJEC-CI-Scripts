#!/bin/bash
# Stop the running backend
docker stop mojec-backend

# Delete the existing container
docker rm mojec-backend

# Pull the new version from DockerHub
docker pulll hftstuttgart/mojec-backend

# Build the container and start it
docker rm -p 8080:8080 --name mojec-backend -hftstuttgart/mojec-backend:latest
