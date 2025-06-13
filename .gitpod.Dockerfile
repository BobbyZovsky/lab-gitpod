FROM ubuntu:22.04

RUN apt update && apt install -y \
    build-essential \
    clang \
    cmake \
    gdb \
    htop \
    util-linux \
    libasan6 \
    && apt clean

ENV ASAN_OPTIONS=detect_leaks=1
