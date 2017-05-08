#!/bin/bash
#
# Install any dependencies
set -e  # Exit on error


apt-get -qy install build-essential automake pkg-config libtool libffi-dev \
    libgmp-dev python-pip