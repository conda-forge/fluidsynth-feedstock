#!/bin/bash
set -ex

mkdir build
cd build

cmake -G Ninja \
    ${CMAKE_ARGS} \
    -Denable-framework=OFF \
    -DLIB_SUFFIX="" \
    -Denable-libsndfile=ON \
    -DFLUID_HOST_COMPILER=${CC_FOR_BUILD} \
    ..

cmake --build .
cmake --install .
