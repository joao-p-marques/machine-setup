#!/bin/bash

# basic install
echo "Installing base..."
sudo dnf update
sudo dnf -y install tree curl wget vim git flatpak make 

# docker
echo "Installing docker..."
echo "Removing old docker packages..."
#sudo dnf remove docker-*
#sudo dnf config-manager --disable docker-*
echo "Enabling old cgroups..."
#sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"
echo "Whitelisting docker in firewall..."
#sudo firewall-cmd --permanent --zone=trusted --add-interface=docker0
#sudo firewall-cmd --permanent --zone=FedoraWorkstation --add-masquerade
echo "Installing Moby..."
#sudo dnf install moby-engine docker-compose
#sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

#sudo systemctl enable docker
#sudo systemctl start docker

# # Virtual Box
# echo "Installing vbox..."
# sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -P /etc/yum.repos.d/

# sudo dnf update

# sudo dnf install @development-tools
# sudo dnf install kernel-devel kernel-headers dkms qt5-qtx11extras  elfutils-libelf-devel zlib-devel
# sudo dnf install VirtualBox-6.0

# sudo usermod -a -G vboxusers jota

# # Pop OS Theme
# echo "Installing pop os theme..."
# sudo dnf install inkscape optipng gtk-murrine-engine sassc
# cd ~/Downloads
# git clone https://github.com/pop-os/gtk-theme
# mv gtk-theme pop-theme
# cd pop-theme
# make
# sudo make install

# cd ..
# git clone https://github.com/pop-os/icon-theme pop-icon-theme
# cd pop-icon-theme
# meson build
# sudo ninja -C "build" install
# cd

# neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm install.sh

# fish
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:fish:release:2/Fedora_26/shells:fish:release:2.repo
sudo dnf install fish
# set as default shell
sudo dnf install -y util-linux-user
chsh -s $(which fish)

# install pipenv
# pip install --user pipenv

# vim Plug
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# pipx and python dependencies
python -m pip install --user pipx
pipx ensurepath

pipx install copier
pipx install invoke
pipx install pre-commit

pipx install ansible --include-deps

