#!/bin/bash

docker login

# Downloads the image
docker pull joshstoneback/modified-solvitaire:latest

# If the cmake-build-[debug/release] folders don't exist, copies pre-generated
# versions from the docker image into the current directory (so new users
# don't have to wait for a long build to complete!)
if [ ! -d "cmake-build-release" ] && [ ! -d "cmake-build-debug" ]; then
    docker run -i -v ${PWD}:/home/Solvitaire --rm \
        joshstoneback/modified-solvitaire:latest bash -c \
        "cp -r ../.install/cmake-build-* ."
fi
