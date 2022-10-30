#!/bin/bash


export QT_QPA_PLATFORMTHEME=qt5ct

# Enable wayland support for Firefox
export MOZ_ENABLE_WAYLAND=1

# Ignore duplicates in bash history
export HISTCONTROL=ignoreboth:erasedups