#!/bin/bash

# Install cups and ghostscripts (printer service)
sudo pacman -S --needed --noconfirm cups ghostscript

# Start cpus on startup
sudo systemctl enable cups.service
sudo systemctl start cups.service