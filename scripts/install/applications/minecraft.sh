#!/bin/bash

# Requires flatpak
source "${BASH_SOURCE%/*}/../tools/flatpak.sh"

# Install Minecraft
flatpak install -y com.mojang.Minecraft