#!/bin/bash -xeu

DOCKERHUB_REPO=${DOCKERHUB_REPO:-detiber/devenvs}
PUSH_IMAGES=${PUSH_IMAGES:-}

# First build base image
docker build -t ${DOCKERHUB_REPO}:base base/
if [[ -n ${PUSH_IMAGES} ]]; then
  docker push ${DOCKERHUB_REPO}:base
fi

# Then build language specific images
for lang in langs/*; do
  ltag=${lang##*/}
  docker build -t ${DOCKERHUB_REPO}:${ltag} ${lang}
  if [[ -n ${PUSH_IMAGES} ]]; then
    docker push ${DOCKERHUB_REPO}:${ltag}
  fi
done

# Finally build project specific images
for project in $(find projects -name Dockerfile); do
  pdir=${project//\/Dockerfile}
  subdir=${pdir##projects/}
  ptag=${subdir/\//-}
  docker build -t ${DOCKERHUB_REPO}:${ptag} ${pdir}
  if [[ -n ${PUSH_IMAGES} ]]; then
    docker push ${DOCKERHUB_REPO}:${ptag}
  fi
done
