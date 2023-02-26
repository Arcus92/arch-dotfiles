#!/bin/bash

# Install sddm (Desktop Manager)
sudo pacman -S --needed --noconfirm sddm qt5-graphicaleffects qt5-quickcontrols2 qt5-svg

# Auto start
sudo systemctl enable sddm

# Install SDDM theme
if [ ! -d "/usr/share/sddm/themes/sugar-candy" ]
then
    git clone https://framagit.org/MarianArlt/sddm-sugar-candy.git /tmp/sddm-sugar-candy
    sudo cp -rf /tmp/sddm-sugar-candy /usr/share/sddm/themes/sugar-candy
    rm -rf /tmp/sddm-sugar-candy
fi

# Copy the SDDM settings
sudo mkdir -p "/etc/sddm.conf.d"
sudo cp -f "${BASH_SOURCE%/*}/sddm/theme.conf" "/etc/sddm.conf.d/"
