-- Set programs that you use
runTerminal = "foot"
runFileManager = "nemo"
runMenu = "wofi --show drun"

-- Screenshot area selector
runScreenshot = 'grim -t png -s 1.5 -g "$(slurp -b {theme_color_background_dark}40 -c {theme_color_accent}ff -s {theme_color_background_light}80 -w 2 && sleep 0.1)" - | wl-copy -t image/png'

require("./autostart")
require("./input")
require("./layout")
require("./output")
require("./env")
require("./windowrules")