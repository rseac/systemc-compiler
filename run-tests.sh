#!/bin/bash -e

# ################################################################################
# Build Tests using ISCC
(
    source setenv.sh
    mkdir build -p && cd build
    cmake ../                          # prepare Makefiles 
    cd icsc/examples                   # build examples only, 
                                       # comment this line to build all tests
    ctest -j12                         # compile and run Verilog generation
                                       # use "-jN" key to run in "N" processes
)
