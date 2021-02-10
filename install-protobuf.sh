#!/bin/bash -e

cd $ICSC_HOME

# Download, unpack, build, install Protobuf 3.13
##wget https://github.com/protocolbuffers/protobuf/releases/download/v3.13.0/protoc-3.13.0-linux-x86_64.zip --no-check-certificate
wget https://github.com/protocolbuffers/protobuf/archive/v3.13.0.tar.gz --no-check-certificate
tar -xvf v3.13.0.tar.gz
(
    cd protobuf-3.13.0
    mkdir build -p && cd build
    cmake ../cmake/ -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$ICSC_HOME -DBUILD_SHARED_LIBS=ON -Dprotobuf_BUILD_TESTS=OFF
    make -j12
    make install


    cd $ICSC_HOME
    rm -f v3.13.0.tar.gz
    rm -rf protobuf-3.13.0
)

