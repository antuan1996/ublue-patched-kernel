#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

readonly NVIDIA_MAJOR_VERSION="535"

# Your code goes here.
echo 'Install nvidia kmods'
find /tmp/rpms
rpm-ostree install /tmp/rpms/ublue-os/ublue-os-nvidia-addons*.rpm
source /tmp/rpms/kmods/nvidia-vars.${NVIDIA_MAJOR_VERSION}
rpm-ostree install /tmp/rpms/kmods/kmod-${NVIDIA_PACKAGE_NAME}-${KERNEL_VERSION}-${NVIDIA_AKMOD_VERSION}.fc${RELEASE}.rpm
