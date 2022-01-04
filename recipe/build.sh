#!/bin/bash

mkdir build
cd build
export CMAKE_C_COMPILER=$BUILD_PREFIX/bin/x86_64-conda-linux-gnu-cc
cmake .. -Denable-framework=OFF -DLIB_SUFFIX="" -Denable-libsndfile=ON -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_PREFIX_PATH:PATH=$PREFIX
make install
