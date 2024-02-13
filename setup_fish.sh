#!/bin/bash
echo "Checking for updates..."
sudo apt update -y &&
sudo apt upgrade -y &&
echo "Installing fish shell..."
sudo apt-add-repository ppa:fish-shell/release-3 &&
sudo apt update -y &&
sudo apt install fish -y &&
chsh -s $(which fish) &&
fish ./setup_fish.1
