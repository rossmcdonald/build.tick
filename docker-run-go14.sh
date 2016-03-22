#!/bin/bash
# Run the 'docker run' command without having to remember the 'docker
# run' command.

docker run -v $(pwd):/ansible build.tick.go14:latest $@
