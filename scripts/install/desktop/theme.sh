#!/bin/bash

sudo pacman -S --needed --noconfirm qt5ct qt6ct
sudo pacman -S --needed --noconfirm adwaita-qt5 adwaita-qt6
sudo pacman -S --needed --noconfirm breeze-gtk

# Install icons
git clone https://github.com/cbrnix/Flatery.git /tmp/Flatery
sudo cp -rf /tmp/Flatery/Flatery-* /usr/share/icons/
rm -rf /tmp/Flatery