#!/bin/bash
#
# Install any dependencies
set -e  # Exit on error


yum -y install golang gmp-devel git
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum
make geth
