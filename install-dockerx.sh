#!/bin/bash
# installing dockerx push

echo "Installing dockerx"
sudo curl -L "https://raw.githubusercontent.com/arthursalvtr/dockerx-push/master/dockerx-push" -o /usr/local/bin/dockerx-push
sudo curl -L "https://raw.githubusercontent.com/arthursalvtr/dockerx-push/master/dockerx-pull" -o /usr/local/bin/dockerx-pull

sudo chmod +x /usr/local/bin/dockerx-push
sudo chmod +x /usr/local/bin/dockerx-pull

echo -e "\nDockerX Installed!\n"