#!/bin/bash -e

git clone https://github.com/intel/systemc-compiler $ICSC_HOME/icsc
# Build and install ISCC
(
    cd $ICSC_HOME/icsc
    mkdir build -p && cd build
    cmake ../ -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$ICSC_HOME
    #cmake ../ -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=$ICSC_HOME
    make -j12
    make install
)

