#!/bin/bash

# Load the theme. Create you own color definition
source "${BASH_SOURCE%/*}/themes/default.sh"
source "${BASH_SOURCE%/*}/variables/outputs.sh"

copy_file_and_replace_variables() {
    sed_regex=""
    variables=( \
        theme_wallpaper_name \
        theme_font \
        theme_color_text \
        theme_color_background_dark \
        theme_color_background_light \
        theme_color_accent \
        theme_color_accent_light \
        theme_color_accent_dark \
        theme_color_accent_red \
        theme_color_accent_text \
        theme_gtk_name \
        theme_gtk_icons \
        theme_gtk_cursors \
        output_1 \
        output_2 \
        )

    
    for v in ${variables[@]}; do
        sed_regex="${sed_regex}s/{$v}/${!v}/g; "
    done
    sed -n "${sed_regex} p" "$1" > "$2"
}

# Export needed for the inner bash call in copy_folder_and_replace_variables
export -f copy_file_and_replace_variables

copy_folder_and_replace_variables() {
    find $1 -type d -exec bash -c "mkdir -p \"$2/\$(realpath --relative-to \"$1/..\" \"{}\")\"" \;
    find $1 ! -type d -exec bash -c "copy_file_and_replace_variables \"{}\" \"$2/\$(realpath --relative-to \"$1/..\" \"{}\")\""  \;
}


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

# Copy SDDM theme overwrite 
copy_file_and_replace_variables "${BASH_SOURCE%/*}/../data/sddm/theme.conf.user" "/tmp/theme.conf.user"
sudo cp -f "/tmp/theme.conf.user" "/usr/share/sddm/themes/sugar-candy"
sudo mkdir -p "/usr/share/wallpapers/arcus/"
sudo cp -f "${BASH_SOURCE%/*}/../data/wallpapers/$theme_wallpaper_name" "/usr/share/wallpapers/arcus/"
rm -f "/tmp/theme.conf.user"

# Apply GTK theme
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface gtk-theme "${theme_gtk_name}"
gsettings set org.gnome.desktop.interface icon-theme "${theme_gtk_icons}"
gsettings set org.gnome.desktop.interface cursor-theme "${theme_gtk_cursors}"
gsettings set org.gnome.desktop.interface font-name "${theme_font}, 10"
gsettings set org.cinnamon.desktop.default-applications.terminal exec foot
