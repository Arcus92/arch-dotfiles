-- See https://wiki.hyprland.org/Configuring/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.config({
  xwayland = {
    use_nearest_neighbor = false
  }
})

hl.workspace_rule({workspace = "1", monitor = "{output_1}", persistent = true, default = true})
hl.workspace_rule({workspace = "2", monitor = "{output_1}", persistent = true})
hl.workspace_rule({workspace = "3", monitor = "{output_1}", persistent = true})
hl.workspace_rule({workspace = "4", monitor = "{output_1}", persistent = true})
hl.workspace_rule({workspace = "5", monitor = "{output_1}", persistent = true, layout = "scrolling"})
hl.workspace_rule({workspace = "6", monitor = "{output_1}", persistent = true, layout = "scrolling"})
hl.workspace_rule({workspace = "7", monitor = "{output_2}", persistent = true, default = true})
hl.workspace_rule({workspace = "8", monitor = "{output_2}", persistent = true, layout = "scrolling"})

hl.workspace_rule({workspace = "special:magic", gaps_out = 60})