#!/bin/bash

sudo apt install flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt install snapd
# sudo snap install snap-store

sudo apt install pipx
sudo apt install python3-venv

pipx install copier
pipx install invoke
pipx install pre-commit

pipx install ansible

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

