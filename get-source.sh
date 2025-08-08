#!/usr/bin/env bash

KERNEL_COMMIT_SHA="a546f1e85ea87f21abe49b2f961ca56aedb5f995"

KERNEL_SOURCE_URL="https://github.com/AOSC-Tracking/linux/archive/$KERNEL_COMMIT_SHA.tar.gz"
# KERNEL_CONFIG_URL="https://github.com/AOSC-Dev/aosc-os-abbs/archive/36167f1f320c7203d57e222ce75aaff9bd127a45.tar.gz"

# Download kernel source
curl -fsSL -o linux.tar.gz $KERNEL_SOURCE_URL
tar -xzf linux.tar.gz
rm linux.tar.gz
mv "linux-$KERNEL_COMMIT_SHA" linux

# Download kernel config
# Maintainer should update the kernel config from https://github.com/AOSC-Dev/aosc-os-abbs