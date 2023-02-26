#!/bin/bash

sudo pacman -S --needed --noconfirm qt5ct
sudo pacman -S --needed --noconfirm adwaita-qt5 adwaita-qt6
sudo pacman -S --needed --noconfirm breeze breeze-gtk

# Install icons
if [ ! -d "/usr/share/icons/Flatery-Dark" ]
then
    git clone https://github.com/cbrnix/Flatery.git /tmp/Flatery
    sudo cp -rf /tmp/Flatery/Flatery-* /usr/share/icons/
    rm -rf /tmp/Flatery
fi