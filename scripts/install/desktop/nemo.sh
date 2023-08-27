#!/bin/bash

# Install nemo (file manager)
sudo pacman -S --needed --noconfirm nemo cinnamon-translations

# Install nemo plugins
sudo pacman -S --needed --noconfirm nemo-fileroller nemo-share

# Install dependencies for network (e.g. SMB)
sudo pacman -S --needed --noconfirm inetutils gvfs gvfs-smb gvfs-afc gvfs-gphoto2