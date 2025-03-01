#!/bin/bash

# Import the environment file
if [ -f "$HOME/.config/sway/env" ]
then
    source "$HOME/.config/sway/env"
fi

# Start Sway
XDG_CURRENT_DESKTOP=sway dbus-run-session sway