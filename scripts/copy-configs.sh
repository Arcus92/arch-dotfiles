#!/bin/bash

# Clean config
rm -rf $HOME/.config/sway
rm -rf $HOME/.config/foot
rm -rf $HOME/.config/waybar
rm -rf $HOME/.config/wofi
rm -rf $HOME/.config/mako
rm -rf $HOME/.config/bash-scripts

# Copy configs to user directory
cp -r ${BASH_SOURCE%/*}/../.config $HOME

# Copy vscode theme to user directory
cp -r ${BASH_SOURCE%/*}/../.vscode-oss $HOME