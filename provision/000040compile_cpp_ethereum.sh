#!/bin/bash
#
# Install any dependencies
set -e  # Exit on error


cd cpp-ethereum
mkdir build
cd build
/usr/local/bin/cmake ..
make
