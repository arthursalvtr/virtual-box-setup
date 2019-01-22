#!/bin/bash

# remove all existing old docker
echo "Removing previous docker installation"
sudo apt-get remove docker docker-engine docker.io
# install docker from convenience script
echo -e "\nInstalling new Docker"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo rm get-docker.sh
echo -e "\nDocker Installed!"

echo -e "\nInstalling Docker Compose"
# installing docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo -e "\nAdjusting permission for Docker Compose"
sudo chmod +x /usr/local/bin/docker-compose
echo -e "\nDocker Compose Installed!"