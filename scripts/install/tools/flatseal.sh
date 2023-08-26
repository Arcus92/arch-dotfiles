#!/bin/bash

# Requires flatpak
source "${BASH_SOURCE%/*}/../tools/flatpak.sh"

# Install Flatseal
flatpak install -y com.github.tchx84.Flatseal