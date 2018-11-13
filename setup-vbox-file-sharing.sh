#!/bin/bash

# configuring file sharing between host and machine
echo "Configuring virtual machine file sharing"
sudo mount /dev/cdrom /media/cdrom

if [ $? -ne 0 ]; then
    sudo mkdir /media/cdrom
    sudo mount /dev/cdrom /media/cdrom
fi

echo "Installing virtual machine required packages"
sudo apt-get install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r)
sudo /media/cdrom/./VBoxLinuxAdditions.run
