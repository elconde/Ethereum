#!/bin/bash
#
# Download pyetheapp
set -e  # Exit on error


git clone https://github.com/ethereum/pyethapp
cd pyethapp
python setup.py develop
