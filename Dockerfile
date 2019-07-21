FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y \
    --no-install-recommends \
    build-essential \
    cmake \
    curl \
    gcc-arm-none-eabi \
    git \
    libnewlib-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
    unzip \
    && rm -rf /var/lib/apt/lists/*

COPY install.sh install.sh
RUN /bin/sh install.sh
RUN mkdir /build
WORKDIR /build
