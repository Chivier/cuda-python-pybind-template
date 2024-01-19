#!/bin/bash

git submodule init
git submodule update

if [ ! -d "build" ]; then
    mkdir build
fi

cd build
cmake ..
make
export PYTHONPATH="$PWD:$PYTHONPATH"
cd ..
