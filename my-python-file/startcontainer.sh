#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull zaidtalha123/my-python-file

# Run the Docker image as a container
docker run -d -p 5000:5000 zaidtalha123/my-python-file
