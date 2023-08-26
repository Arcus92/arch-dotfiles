#!/bin/bash

# Make sure wget is installed
sudo pacman -S --needed --noconfirm wget

# Download the install script
wget https://dot.net/v1/dotnet-install.sh
chmod +x ./dotnet-install.sh

# Install dotnet 7 locally
./dotnet-install.sh -channel 7.0

# Remove the file again
rm -f ./dotnet-install.sh