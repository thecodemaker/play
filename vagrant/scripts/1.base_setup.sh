#!/usr/bin/env bash

echo "_ - _ - _ - _ - _ - Setting up - _ - _ - _ - Base Setup - _ - _ - _ - _ - _ - "

sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" > /etc/lightdm/lightdm.conf.d/50-no-guest.conf'

#sed -i 's@http:\/\//us.archive.ubuntu@http:\/\/ro.archive.ubuntu.com@g' /etc/apt/sources.list
#sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

#dpkg --configure -a

# Updating and Upgrading dependencies
#apt-get update -y
#apt-get upgrade -y

# Install ubuntu-desktop
#apt-get install -y software-properties-common gnome-session-flashback

# Install necessary dependencies
sudo apt-get install -y wget git curl build-essential net-tools lsof nmap terminator

