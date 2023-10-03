#!/bin/bash

source "${BASH_SOURCE%/*}/functions.sh"

# Copy SDDM theme overwrite 
copy_file_and_replace_variables "${BASH_SOURCE%/*}/../data/sddm/theme.conf.user" "/tmp/theme.conf.user"
sudo cp -f "/tmp/theme.conf.user" "/usr/share/sddm/themes/sugar-candy"
sudo mkdir -p "/usr/share/wallpapers/arcus/"
sudo cp -f "${BASH_SOURCE%/*}/../data/wallpapers/$theme_wallpaper_name" "/usr/share/wallpapers/arcus/"
rm -f "/tmp/theme.conf.user"

# Copy modprobe configs to disable the Nvidia drive (I only need this for virtualisation)
sudo cp -rf "${BASH_SOURCE%/*}/../data/modprobe.d/" "/etc/"