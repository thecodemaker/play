#!/bin/bash

set -e

echo "_ - _ - _ - _ - _ - Setting up - _ - _ - _ - Base Setup - _ - _ - _ - _ - _ - "

# Updating and Upgrading dependencies
sudo apt-get update -y
sudo apt-get upgrade -y

# Install ubuntu-desktop
sudo apt-get install -y software-properties-common ubuntu-desktop gnome-session-flashback

# Install guest-additions
sudo apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11

# Install necessary dependencies
sudo apt-get -y install wget git curl build-essential net-tools lsof nmap