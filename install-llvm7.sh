#!/bin/bash -e

cd $ICSC_HOME
# Download, unpack, build, install Clang and LLVM
##wget https://releases.llvm.org/7.0.0/clang+llvm-7.0.0-x86_64-linux-sles12.3.tar.xz --no-check-certificate
wget https://releases.llvm.org/7.0.0/cfe-7.0.0.src.tar.xz --no-check-certificate
wget https://releases.llvm.org/7.0.0/llvm-7.0.0.src.tar.xz --no-check-certificate
tar -xvf cfe-7.0.0.src.tar.xz
tar -xvf llvm-7.0.0.src.tar.xz
mv cfe-7.0.0.src llvm-7.0.0.src/tools/clang
(
    cd llvm-7.0.0.src
    mkdir build -p && cd build
    cmake ../ -DLLVM_ENABLE_ASSERTIONS=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$ICSC_HOME
    make -j12
    make install
)

