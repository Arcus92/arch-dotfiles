#!/bin/bash

# Requires flatpak
source "${BASH_SOURCE%/*}/../tools/flatpak.sh"

# Install udev (required for Steam controller)
sudo pacman -S --needed --noconfirm udev

# Install Steam
flatpak install -y com.valvesoftware.Steam