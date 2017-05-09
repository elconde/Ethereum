#!/bin/bash
#
# Install serpent
set -e  # Exit on error


git clone https://github.com/ethereum/serpent
cd serpent
python setup.py install
