#!/usr/bin/env bash

KERNEL_SOURCE_URL="https://github.com/AOSC-Tracking/linux/archive/f44f34a3104a2725300dc5a8237c111e524381e6.tar.gz"
KERNEL_CONFIG_URL="https://github.com/AOSC-Dev/aosc-os-abbs/archive/36167f1f320c7203d57e222ce75aaff9bd127a45.tar.gz"

# Download kernel source
curl -fsSL -o linux.tar.gz $KERNEL_SOURCE_URL
tar -xzf linux.tar.gz
rm linux.tar.gz
mv linux-f44f34a3104a2725300dc5a8237c111e524381e6 linux

# Download kernel config
curl -fsSL -o aosc-os-abbs.tar.gz $KERNEL_CONFIG_URL
tar -xzf aosc-os-abbs.tar.gz
rm aosc-os-abbs.tar.gz
mv aosc-os-abbs-36167f1f320c7203d57e222ce75aaff9bd127a45 aosc-os-abbs