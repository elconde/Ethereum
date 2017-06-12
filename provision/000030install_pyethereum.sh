#!/bin/bash
#
# Download pyethereum
set -e  # Exit on error


git clone https://github.com/ethereum/pyethereum/
cd pyethereum
pip install --upgrade -r requirements.txt
git checkout 0ae64823d1bccba9c8148adb462060cb83c08f06
python setup.py install
