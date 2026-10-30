hl.window_rule({match = { class = "^(nemo|pavucontrol|file-roller|code-oss|discord|com.discordapp.Discord|steam|makemkv|Ledger Live|Enpass|Signal)$" }, opacity = "0.9 0.9"})
hl.window_rule({match = { class = "^jetbrains-.*$" }, opacity = "0.9 0.9"})
hl.window_rule({match = { class = "^(pavucontrol|file-roller)$" }, float = true})
hl.window_rule({match = { class = "slurp" }, no_dim = true, no_anim = true})

hl.window_rule({match = { class = "steam" }, workspace = "3 silent"})
hl.window_rule({match = { class = "(discord|com.discordapp.Discord)$" }, workspace = "2 silent"})