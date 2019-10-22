#!/bin/bash

sudo apt install openssh-server

sudo systemctl enable ssh
sudo systemctl start ssh

sudo ufw allow ssh
sudo ufw enable

# ssh settings at /etc/ssh/sshd_config
