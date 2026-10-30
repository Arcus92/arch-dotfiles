
-- Refer to https://wiki.hypr.land/configuring/core/config-options/
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,

        border_size = 1,

        col = {
            active_border   = "rgba({theme_color_accent}ff)",
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/configuring/extra/tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    dwindle = {
        -- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
        preserve_split = true -- you probably want this
    },

    master = {
        -- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
        new_status = "master"
    },


    misc = {
        -- See https://wiki.hyprland.org/Configuring/Variables/ for more
        force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers

        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            color        = "0x000000AF",
        },

        blur = {
            enabled   = true,
            size      = 10,
            passes    = 2,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})