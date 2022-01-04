#!/bin/bash

mkdir build
cd build
export CC=$BUILD_PREFIX/bin/x86_64-conda-linux-gnu-cc
cmake .. -Denable-framework=OFF -DLIB_SUFFIX="" -Denable-libsndfile=ON -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_PREFIX_PATH:PATH=$PREFIX
make install
