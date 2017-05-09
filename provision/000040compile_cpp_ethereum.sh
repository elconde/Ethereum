#!/bin/bash
#
# Install any dependencies
set -e  # Exit on error


cd cpp-ethereum/build
/usr/local/bin/cmake ..
make
