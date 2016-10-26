#!/bin/bash

echo "Build for Ubuntu 14.04 or 16.04."

CORES=echo "$(nproc --all) * 1.5/1" | bc
#sudo apt-get install cmake build-essential libboost-all-dev

mkdir -p nheqminer/build
cd nheqminer/build
cmake ..
make -j$CORES

echo "Done!"
