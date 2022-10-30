#!/bin/bash

# Requires flatpak
source "${BASH_SOURCE%/*}/../tools/flatpak.sh"

# Install Discord
flatpak install -y com.discordapp.Discord