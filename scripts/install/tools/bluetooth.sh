#!/bin/bash

# Install bluetooth stack
sudo pacman -S --needed --noconfirm bluez bluez-utils

# Bluetooth GUI frontend
sudo pacman -S --needed --noconfirm blueman

# Enable and start the bluetooth server
sudo systemctl enable bluetooth
sudo systemctl start bluetooth