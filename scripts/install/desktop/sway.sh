#!/bin/bash

# Install Sway
sudo pacman -S --needed --noconfirm sway swaybg swayidle swaylock

# Modifies the Sway start to load environment variables.
# Environment variables set in ~/.profile are ignored in Sway.
# This is the only way to setup variables for all applications spawned by Sway / bemenu.

sudo cp -f "${BASH_SOURCE%/*}/../../../data/sway/sway-start.sh" "/usr/bin/sway-start.sh"
sudo chmod +x /usr/bin/sway-start.sh
sudo cp -f "${BASH_SOURCE%/*}/../../../data/sway/sway-custom.desktop" "/usr/share/wayland-sessions/sway-custom.desktop"