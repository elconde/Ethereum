#!/bin/bash
#
# Download pyethereum
set -e  # Exit on error


git clone https://github.com/ethereum/pyethereum/
cd pyethereum
pip install --upgrade -r requirements.txt
python setup.py install
