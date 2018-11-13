#!/bin/bash

echo "Setting up environment! Please wait..."

echo -e "\nUpdating server"

sudo apt-get update -y && sudo apt-get upgrade -y

sudo ./install-docker.sh

# Uncomment this section to installed virtual box file sharing
# make sure you have VBoxGuestAdditions ISO attached to you virtual box before proceeding
sudo ./setup-vbox-file-sharing.sh

# Uncomment this section to setup host-only
# make sure you have enabled host-only setting for this virtual box
# Setting up host-only network
sudo ./setup-host-only.sh
