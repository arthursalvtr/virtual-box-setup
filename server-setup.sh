#!/bin/bash

# system update
echo "Setting up environment! Please wait..."

echo -e "\nUpdating server"

sudo apt-get update -y && sudo apt-get upgrade -y

echo -e "\nInstalling Git..."
# installing git
sudo apt-get install git 

echo -e "\nDownloading installation script"
mkdir $(pwd)/eric
cd $(pwd)/eric
git clone https://github.com/arthursalvtr/virtual-box-setup.git setup
cd $(pwd)/eric/setup

chmod +x vm-setup.sh setup-vbox-file-sharing.sh setup-host-only.sh install-dockerx.sh install-docker.sh

sudo ./install-docker.sh

echo -e "\nSetting up nginx user and group"
sudo groupadd -g 82 nginx
sudo adduser --gid 82 --uid 82 --system --no-create-home --disabled-password --disabled-login nginx

echo -e "\nDownloading required images..."

images=( "node:10.15.0-alpine" "nginx:1-alpine" "memcached:1.5.10-alpine" "redis:4-alpine" "php:7.2-cli-alpine" "mariadb:10.3.9-bionic" "mysql:5.7" "cassandra:3" "kong:latest" "lejmr/iredmail:mysql-latest" "composer:latest" "jwilder/nginx-proxy:alpine" )
for image in "${images[@]}"
do
    docker pull $image
done
