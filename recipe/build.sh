#!/bin/bash
set -ex

mkdir build
cd build

cmake -G Ninja \
    ${CMAKE_ARGS} \
    -Denable-framework=OFF \
    -DLIB_SUFFIX="" \
    -Denable-libsndfile=ON \
    ..

cmake --build .
cmake --install .
