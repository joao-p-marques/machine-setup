#!/bin/bash

# basic install
echo "Installing base..."
sudo dnf -y install vim git code flatpak make python-pip python3-pip neovim python{2,3}-neovim

# docker
echo "Installing docker..."
sudo dnf install -y dnf-utils \
  device-mapper-persistent-data \
  lvm2

sudo dnf-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io

# # spotify
# echo "Installing spotify..."
# sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
# https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# sudo dnf install lpf-spotify-client
# lpf  approve spotify-client
# sudo -u pkg-build lpf build spotify-client
# sudo dnf install /var/lib/lpf/rpms/spotify-client/spotify-client-*.rpm

# Virtual Box
echo "Installing vbox..."
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -P /etc/yum.repos.d/

sudo dnf update

sudo dnf install @development-tools
sudo dnf install kernel-devel kernel-headers dkms qt5-qtx11extras  elfutils-libelf-devel zlib-devel
sudo dnf install VirtualBox-6.0

usermod -a -G vboxusers jota

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
chsh -s 'which fish'

# install pipenv
pip install --user pipenv

