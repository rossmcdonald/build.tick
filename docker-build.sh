#!/bin/bash
#
# Build the two Docker images for this repo
#

echo "Building Dockerfile_GO14..."
docker build -f Dockerfile_GO14 -t build.tick.go14 .
test $? -eq 0 || exit 1

echo "Building Dockerfile_GO15..."
docker build -f Dockerfile_GO15 -t build.tick.go15 .
test $? -eq 0 || exit 1
