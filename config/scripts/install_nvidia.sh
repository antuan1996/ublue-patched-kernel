#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Install nvidia kmods'
find /tmp/rpms
rpm-ostree install /tmp/rpms/ublue-os/ublue-os-nvidia*.rpm
rpm-ostree install /tmp/rpms/kmods/kmod-nvidia.rpm
