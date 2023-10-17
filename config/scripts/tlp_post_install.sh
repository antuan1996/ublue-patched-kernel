#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Systemctl commands for TLP installation'
systemctl enable tlp.service
systemctl mask systemd-rfkill.service systemd-rfkill.socket
echo 'Systemctl commands for TLP installation - DONE'