#!/bin/bash
#
# Install pip
set -e  # Exit on error


wget --debug --no-verbose https://bootstrap.pypa.io/get-pip.py
python get-pip.py
