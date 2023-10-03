#!/bin/bash

# Requires multilib
source "${BASH_SOURCE%/*}/../tools/multilib.sh"

# Install drivers
sudo pacman -S --needed --noconfirm mesa lib32-mesa  
sudo pacman -S --needed --noconfirm vulkan-radeon lib32-vulkan-radeon
sudo pacman -S --needed --noconfirm libva-mesa-driver lib32-libva-mesa-driver
sudo pacman -S --needed --noconfirm mesa-vdpau lib32-mesa-vdpau 
sudo pacman -S --needed --noconfirm xf86-video-amdgpu