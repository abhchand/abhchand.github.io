#!/usr/bin/env bash

# Create the docker container, but only if it does not exist
if $(docker ps -a | grep mealie_v0.5.1)
then
  docker create \
    --env DB_TYPE='sqlite' \
    --publish 9925:80 \
    --volume /var/mealie/data/:/app/data/ \
    --name mealie_v0.5.1 \
    hkotel/mealie:v0.5.1
fi

# Start the docker container
docker start --attach mealie_v0.5.1
