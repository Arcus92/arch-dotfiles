#!/bin/bash

# Install keyring for password storage
sudo pacman -S --needed --noconfirm gnome-keyring libgnome-keyring

# Use keyring for git
git config --global credential.helper gnome-keyring