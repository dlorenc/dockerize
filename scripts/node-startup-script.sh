#!/bin/bash

# Install crcmod for faster deploys
apt-get update
apt-get install -y gcc python-dev python-setuptools
easy_install -U pip
pip install -U crcmod