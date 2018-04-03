#!/bin/bash

SCRIPT_HOME=$(cd "$(dirname "${0}")/.." && pwd)
echo "${SCRIPT_HOME}"

# build images
docker build -t vpoilvert/traefik-gke-demo-back "${SCRIPT_HOME}/back/"
docker build -t vpoilvert/traefik-gke-demo-front "${SCRIPT_HOME}/front/"

# push images
docker push vpoilvert/traefik-gke-demo-back
docker push vpoilvert/traefik-gke-demo-front
