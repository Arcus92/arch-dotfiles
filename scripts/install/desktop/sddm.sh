#!/bin/bash

# Install sddm (Desktop Manager)
sudo pacman -S --needed --noconfirm sddm

# Auto start
sudo systemctl enable sddm