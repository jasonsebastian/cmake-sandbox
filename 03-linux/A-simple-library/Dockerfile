FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    wget

RUN wget https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3.tar.gz \
    && tar -xvzf cmake-3.15.3.tar.gz
WORKDIR /cmake-3.15.3
RUN ./bootstrap \
    && make \
    && make install

COPY . /home
WORKDIR /home
RUN chmod +x build.sh \
    && ./build.sh
RUN ./examples/linux/calculator
