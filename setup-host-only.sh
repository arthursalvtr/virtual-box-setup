#!/bin/bash

# echo "Setting up host-only network"
export ethernets_name="enp0s8"
export ip_range="192.168.56.102/24"
sudo rm -f /etc/netplan/02-netcfg.yaml temp.yml
( echo "cat <<EOF >/etc/netplan/02-netcfg.yaml";
  cat template-netcfg.yaml;
  echo "EOF";
) >temp.yml
. temp.yml
echo -e "\nHost-only network configuration file added to /etc/netplan/02-netcfg.yaml"
cat /etc/netplan/02-netcfg.yaml
sudo rm -f temp.yml
sudo cp -f 50-cloud-init.yaml /etc/netplan/50-cloud-init.yaml
sudo netplan apply
