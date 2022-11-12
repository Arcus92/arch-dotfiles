#!/bin/bash

# Check if yay is already installed
if ! yay -v
then
    # Requires aur
    source "${BASH_SOURCE%/*}/../tools/aur.sh"

    # Install go as requirement
    sudo pacman -S --needed --noconfirm go

    # Create a checkout directory
    mkdir /tmp/git-yay
    git clone https://aur.archlinux.org/yay.git /tmp/git-yay

    # Compile
    (cd /tmp/git-yay && makepkg)

    # Install yay
    sudo pacman -U --noconfirm /tmp/git-yay/yay-*.pkg.tar.zst

    # Clean up
    rm -rf /tmp/git-yay
fi