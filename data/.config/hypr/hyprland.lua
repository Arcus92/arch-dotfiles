-- Set programs that you use
runTerminal = "/usr/bin/foot"
runFileManager = "/usr/bin/nemo"
runMenu = "/usr/bin/wofi --show drun"

-- Screenshot area selector
runScreenshot = "/usr/bin/grim -t png -g \"$(slurp -b ##{theme_color_background_dark}40 -c ##{theme_color_accent}ff -s ##{theme_color_background_light}80 -w 2 && sleep 0.1)\" - | wl-copy -t image/png"

require("./autostart")
require("./input")
require("./layout")
require("./output")
require("./env")
require("./windowrules")