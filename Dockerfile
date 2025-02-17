FROM ubuntu:18.04

WORKDIR /home/Solvitaire/

COPY . /home/Solvitaire/

RUN apt-get update \
    && apt-get install -y \
    gcc-6 \
    cmake \
    libboost-all-dev \
    git \
    python3 \
    vim \
    parallel \
    wget

# Installs newer version of cmake to work with googletest
RUN apt-get remove -y cmake

RUN wget https://github.com/Kitware/CMake/releases/download/v3.25.1/cmake-3.25.1-linux-x86_64.tar.gz \
    && tar -xzvf cmake-3.25.1-linux-x86_64.tar.gz --strip-components=1 -C /usr/local \
    && rm cmake-3.25.1-linux-x86_64.tar.gz

RUN cmake -DCMAKE_BUILD_TYPE=RELEASE -Bcmake-build-release -H. \
    && cmake -DCMAKE_BUILD_TYPE=DEBUG -Bcmake-build-debug -H.

RUN cmake --build cmake-build-release \
    && cmake --build cmake-build-debug

WORKDIR /home/Solvitaire/

CMD ["/bin/bash"]
