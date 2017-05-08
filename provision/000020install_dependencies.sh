#!/bin/bash
#
# Install any dependencies
set -e  # Exit on error


yum -y install epel-release
yum -y group install "Development Tools"
yum -y install git openssl-devel python-devel python-pip python-setuptools \
    libffi-devel
