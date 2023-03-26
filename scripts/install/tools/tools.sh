#!/bin/bash

# Install foot (terminal)
sudo pacman -S --needed --noconfirm foot

# Install vim (text editor)
sudo pacman -S --needed --noconfirm vim

# Install nano (text editor)
sudo pacman -S --needed --noconfirm nano


# Install QT support for wayland
sudo pacman -S --needed --noconfirm qt5-wayland qt6-wayland qt5ct qt6ct

# Install OpenJDK (Java)
sudo pacman -S --needed --noconfirm jdk-openjdk

# Install ffmpeg
sudo pacman -S --needed --noconfirm ffmpeg

# Install ffmpeg-thumbnailer (for video thumbnails in Nemo)
sudo pacman -S --needed --noconfirm ffmpegthumbnailer

# Install htop
sudo pacman -S --needed --noconfirm htop

# Install tools for screenshots (grim: screenshotter, slurp: area selector, wl-clipboard: clipboard tool)
sudo pacman -S --needed --noconfirm grim slurp wl-clipboard

# Install wine
sudo pacman -S --needed --noconfirm wine
