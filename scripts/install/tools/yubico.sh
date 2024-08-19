#!/bin/bash

# Install udev
sudo pacman -S --needed --noconfirm udev

# Adding udev rule for yubico
sudo cp -f "${BASH_SOURCE%/*}/../../../data/udev/70-yubico.rules" "/etc/udev/rules.d/70-yubico.rules"

# Reload udev
sudo udevadm control --reload-rules && sudo udevadm trigger