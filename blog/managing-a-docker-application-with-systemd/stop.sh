#!/usr/bin/env bash

# Stops the mealie application docker container

echo "Stopping container 'mealie_v0.5.1'"
docker stop --time 2 mealie_v0.5.1
