#!/bin/bash

# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

sudo dnf install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap

# GNOME Extensions

gnome-extensions install caffeine@patapon.info
gnome-extensions install sound-output-device-chooser@kgshank.net
gnome-extensions install clipboard-indicator@tudmotu.com
gnome-extensions install Vitals@CoreCoding.com
gnome-extensions install places-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions install alt-tab-raise-first-window@system76.com
gnome-extensions install always-show-workspaces@system76.com
gnome-extensions install batteryiconfix@kylecorry31.github.io
gnome-extensions install desktop-icons@csoriano
gnome-extensions install pop-shell@system76.com
gnome-extensions install pop-shop-details@system76.com
gnome-extensions install system76-power@system76.com
gnome-extensions install ubuntu-appindicators@ubuntu.com
gnome-extensions install timepp@zagortenay333

# Flatpaks

flatpak install com.spotify.Client
flatpak install com.uploadedlobster.peek
flatpak install im.riot.Riot
flatpak install me.kozec.syncthingtk
flatpak install org.gnome.DejaDup
flatpak install org.gnome.seahorse.Application
flatpak install org.jitsi.jitsi-meet
flatpak install org.videolan.VLC
flatpak install us.zoom.Zoom

