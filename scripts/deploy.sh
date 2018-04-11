#!/bin/bash

SCRIPT_HOME=$(cd "$(dirname "${0}")/.." && pwd)
echo "${SCRIPT_HOME}"

# define tag
if [ ! -z "${1}" ] ; then
  TAG=${1}
else
  TAG=latest
fi

# build images
docker build -t zenika/traefik-gke-demo-back:${TAG} "${SCRIPT_HOME}/back/"
docker build -t zenika/traefik-gke-demo-front:${TAG} "${SCRIPT_HOME}/front/"

# push images
docker push zenika/traefik-gke-demo-back:${TAG}
docker push zenika/traefik-gke-demo-front:${TAG}
