#!/bin/bash
#
# Build the two Docker images for this repo
#

echo "Building Dockerfile_GO14..."
docker build -f Dockerfile_GO14 -t build.tick.go14 . &>docker-build.go14.log

echo "Building Dockerfile_GO15..."
docker build -f Dockerfile_GO15 -t build.tick.go15 . &>docker-build.go15.log
