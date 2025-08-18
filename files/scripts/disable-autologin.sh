#!/bin/bash

set -oue pipefail

# Forcefully remove the sddm config file for steamos.
rm -f /etc/sddm.conf.d/steamos.conf

# This is the new, more forceful command.
# "mask" creates a link to /dev/null, making it impossible for the system to start the service.
systemctl mask bazzite-autologin.service
