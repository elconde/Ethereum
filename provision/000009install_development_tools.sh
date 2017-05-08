#!/bin/bash
#
# Install development tools
set -e  # Exit on error


yum -y group install "Development Tools"
yum -y