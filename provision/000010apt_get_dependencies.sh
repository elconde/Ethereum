#!/bin/bash
#
# Install any dependencies with apt-get
set -e  # Exit on error


apt-get update
apt-get -q -y install build-essential libcurl4-openssl-dev libgmp-dev \
    libleveldb-dev libmicrohttpd-dev libminiupnpc-dev git
