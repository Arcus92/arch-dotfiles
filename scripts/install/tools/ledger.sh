#!/bin/bash

# Install udev
sudo pacman -S --needed --noconfirm udev

# Adding udev rule for Ledger
sudo cp -f "${BASH_SOURCE%/*}/../../../data/udev/20-ledger.rules" "/etc/udev/rules.d/20-ledger.rules"

# Reload udev
sudo udevadm control --reload-rules