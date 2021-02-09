####################
# base image setup #
####################
# clang works with 20.04
FROM ubuntu:20.04

# https://github.com/moby/moby/issues/27988
# This is to prevent the keyboard interaction
# Another way is to install dialog apt-utils packages first, but I just use echo so that we install less packages
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# We first install necessary packages for file manipulation,
# this helps reduce turn around time for adding packages
RUN apt-get update && apt-get install -y -q --no-install-recommends \
      curl \
      xz-utils \
      ca-certificates

# Copy necessary files and install necessary dependencies in opt
WORKDIR /tmp

# Set up llvm/clang
# in /tmp now
ENV CLANG_VERSION=7.0.0
ENV TARGET_ARCH=linux64

# Install other requirements
RUN apt-get update && apt-get install -y -q --no-install-recommends \
  g++ \
  cmake \
  build-essential \
  make \
  ccache \
  git \
  libz-dev \
  libncurses-dev

  
RUN apt-get install -y wget \
  python3 \
  python3-pip 

# Set up environment variables across images
ENV ICSC_HOME=/systemc-compiler
ENV CXX=g++
ENV CC=gcc

##################################
# finished setting up base image #
##################################
WORKDIR /systemc-compiler

COPY install-protobuf.sh /systemc-compiler
RUN sh install-protobuf.sh 

COPY install-llvm7.sh /systemc-compiler
RUN sh install-llvm7.sh 

COPY install-icsc.sh /systemc-compiler
RUN sh install-icsc.sh 

COPY run-tests.sh /systemc-compiler
RUN /bin/bash -c "bash run-tests.sh"
