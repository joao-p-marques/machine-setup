#!/bin/bash

# install gui lxde
sudo apt install lxde

# install xrdp
sudo apt install -y xrdp
sudo systemctl enable xrdp
sudo systemctl restart xrdp

# setup Xsession
echo "lxsession -s LXDE -e LXDE" > ~/.xsession

# disable gui on boot
sudo systemctl set-default multi-user.target
