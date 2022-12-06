#!/bin/bash

mkdir build
cd build

cmake ${CMAKE_ARGS} \
    -Denable-framework=OFF \
    -DLIB_SUFFIX="" \
    -Denable-libsndfile=ON \
    ..

make install
