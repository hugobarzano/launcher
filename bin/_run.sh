#!/usr/bin/env bash
REPO=$(basename `git rev-parse --show-toplevel`)
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/workspace -p 8080:8080 $REPO /bin/bash
