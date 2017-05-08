#!/bin/bash
#
# Upgrade pip and setuptools
set -e  # Exit on error


pip install --upgrade pip
/usr/local/bin/pip install --upgrade setuptools
