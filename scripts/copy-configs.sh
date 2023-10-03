#!/bin/bash

source "${BASH_SOURCE%/*}/functions.sh"

# Clean config
rm -rf $HOME/.config/sway
rm -rf $HOME/.config/foot
rm -rf $HOME/.config/waybar
rm -rf $HOME/.config/wofi
rm -rf $HOME/.config/mako
rm -rf $HOME/.config/bash-scripts

# Copy configs to user directory
copy_folder_and_replace_variables ${BASH_SOURCE%/*}/../data/.config $HOME

# Copy vscode theme to user directory
copy_folder_and_replace_variables ${BASH_SOURCE%/*}/../data/.vscode-oss $HOME

# Apply GTK theme
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface gtk-theme "${theme_gtk_name}"
gsettings set org.gnome.desktop.interface icon-theme "${theme_gtk_icons}"
gsettings set org.gnome.desktop.interface cursor-theme "${theme_gtk_cursors}"
gsettings set org.gnome.desktop.interface font-name "${theme_font}, 10"
gsettings set org.cinnamon.desktop.default-applications.terminal exec foot
