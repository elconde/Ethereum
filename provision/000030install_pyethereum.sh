#!/bin/bash
#
# Download pyethereum
set -e  # Exit on error


rm -vrf pyethereum
git clone https://github.com/ethereum/pyethereum/
cd pyethereum
python setup.py install
