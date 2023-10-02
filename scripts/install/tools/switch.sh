#!/bin/bash

# Install udev
sudo pacman -S --needed --noconfirm udev

# Adding udev rule for RCM
sudo cp -f "${BASH_SOURCE%/*}/../../../data/udev/100-switch.rules" "/etc/udev/rules.d/100-switch.rules"

# Reload udev
sudo udevadm control --reload-rules