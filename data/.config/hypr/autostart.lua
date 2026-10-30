hl.on("hyprland.start", function ()
    -- Services
    hl.exec_cmd("waybar -c ~/.config/waybar/hypr-config")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("swaync")
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

    -- Autostart apps
    hl.exec_cmd("flatpak run com.discordapp.Discord")
    hl.exec_cmd("steam")

    -- Change main color to white
    hl.exec_cmd("openrgb -c FFFFFF")
end)

