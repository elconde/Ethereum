#!/bin/bash
#
# Install dependencies using yum
set -e  # Exit on error


yum -y install epel-release
yum -y install make gcc-c++ leveldb-devel curl-devel libmicrohttpd-devel gmp-devel git
