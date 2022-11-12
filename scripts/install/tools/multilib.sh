#!/bin/bash

# Enable multilib in pacman
sudo sed -i.bak "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

# Reload package list
sudo pacman -Syyu