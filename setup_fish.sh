#!/bin/bash
echo "Checking for updates..."
sudo apt update &&
sudo apt upgrade &&
echo "Installing fish shell..."
sudo apt-add-repository ppa:fish-shell/release-3 &&
sudo apt update &&
sudo apt install fish &&
chsh -s $(which fish) &&
fish ./setup_fish.1
