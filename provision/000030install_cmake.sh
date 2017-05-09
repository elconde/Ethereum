#!/bin/bash
#
# Install any dependencies
set -e  # Exit on error


cd cpp-ethereum
scripts/install_cmake.sh --prefix /usr/local
