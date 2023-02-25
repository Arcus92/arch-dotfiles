#!/bin/bash

# Requires yay
source "${BASH_SOURCE%/*}/../tools/yay.sh"

# Installing catch2 >= 3.xj
yay -S --noconfirm catch2v3

# Install yuzu (Switch emulator)
yay -S --noconfirm yuzu-early-access