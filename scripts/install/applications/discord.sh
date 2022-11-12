#!/bin/bash

# Discord is broken in Sway / Wayland. It will frezze as soon as you copy someting into the clipboard.
# I will use the browser version for now. 

# Requires flatpak
source "${BASH_SOURCE%/*}/../tools/flatpak.sh"

# Install Discord
flatpak install -y com.discordapp.Discord