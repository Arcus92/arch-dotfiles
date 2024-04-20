#!/bin/bash

# Discord is broken in Sway / Wayland. It will frezze as soon as you copy someting into the clipboard.
# I will use the browser version for now. 

# Requires flatpak
source "${BASH_SOURCE%/*}/../tools/flatpak.sh"

# Install XDG utils to fix open urls
sudo pacman -S --needed --noconfirm xdg-utils

# Install Discord
flatpak install -y com.discordapp.Discord

# Enable RPC by adding a service to create a symlink to the internal flatpak rpc
# Taken from: https://github.com/flathub/com.discordapp.Discord/wiki/Rich-Precense-(discord-rpc)
mkdir -p ~/.config/user-tmpfiles.d
echo 'L %t/discord-ipc-0 - - - - app/com.discordapp.Discord/discord-ipc-0' > ~/.config/user-tmpfiles.d/discord-rpc.conf
systemctl --user enable --now systemd-tmpfiles-setup.service