#!/bin/bash

# Install udev
sudo pacman -S --needed --noconfirm udev

# Adding udev rule for gamepads
sudo cp -f "${BASH_SOURCE%/*}/../../../data/udev/60-gamepad.rules" "/etc/udev/rules.d/60-gamepad.rules"

# Reload udev
sudo udevadm control --reload-rules