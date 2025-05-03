#!/bin/bash

# Requires yay
source "${BASH_SOURCE%/*}/../tools/yay.sh"

# Requires some fonts
source "${BASH_SOURCE%/*}/../tools/fonts.sh"

# Install waybar (the arch package doesn't link the cava module)
yay -S --noconfirm waybar-cava