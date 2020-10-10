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

# Flatpaks

flatpak install flathub com.github.devalien.workspaces
flatpak install flathub com.obsproject.Studio
flatpak install flathub com.spotify.Client
flatpak install flathub com.uploadedlobster.peek
flatpak install flathub im.riot.Riot
flatpak install flathub me.kozec.syncthingtk
flatpak install flathub net.codeindustry.MasterPDFEditor
flatpak install flathub net.poedit.Poedit
flatpak install flathub org.audacityteam.Audacity
flatpak install flathub org.audacityteam.Audacity.Codecs
flatpak install flathub org.eu.encom.spectral.Locale
flatpak install flathub org.gnome.DejaDup
flatpak install flathub org.gnome.Fractal.Locale
flatpak install flathub org.gnome.Logs
flatpak install flathub org.gnome.Platform
flatpak install flathub org.gnome.Platform
flatpak install flathub org.gnome.seahorse.Application
flatpak install flathub org.jitsi.jitsi-meet
flatpak install flathub org.kde.kdenlive
flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub org.videolan.VLC
flatpak install flathub us.zoom.Zoom

sudo dnf install gnome-tweak-tool

sudo dnf install ulaucher 
sudo snap install bw

sudo dnf install flameshot
