#!/bin/bash

# Requires yay
source "${BASH_SOURCE%/*}/../tools/yay.sh"

# Install cups and ghostscripts (printer service)
sudo pacman -S --needed --noconfirm cups ghostscript

# Install printer driver
yay -S --noconfirm brother-dcpj772dw

# Start cpus on startup
sudo systemctl enable cups.service
sudo systemctl start cups.service