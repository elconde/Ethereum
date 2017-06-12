#!/bin/bash
#
# Download pyethereum
set -e  # Exit on error


git clone https://github.com/ethereum/pyethereum/
cd pyethereum
python setup.py install
