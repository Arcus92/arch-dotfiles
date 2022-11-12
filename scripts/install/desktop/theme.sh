#!/bin/bash

# Apply GTK dark theme
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

sudo pacman -S --needed --noconfirm qt5ct qt6ct
sudo pacman -S --needed --noconfirm adwaita-qt5 adwaita-qt6