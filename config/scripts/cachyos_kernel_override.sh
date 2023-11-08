#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'CachyOS kernel override'
rpm-ostree cliwrap install-to-root / && \
rpm-ostree override remove kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra --install kernel-cachyos-lts --install kernel-cachyos-lts-headers    
# rpm-ostree install kernel-cachyos-lts-devel

# rpm-ostree install libcap-ng-devel procps-ng-devel uksmd-lts
# systemctl enable uksmd.service