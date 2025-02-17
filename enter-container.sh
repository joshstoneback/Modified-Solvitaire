#!/bin/bash

if [ "$#" == 0 ]; then
    docker run -it -v$(pwd):/home/Solvitaire --rm \
    joshstoneback/modified-solvitaire:latest
else
    docker run -it -v$(pwd):/home/Solvitaire --rm \
    joshstoneback/modified-solvitaire:latest bash -c "$*"
fi
