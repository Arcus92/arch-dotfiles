hl.window_rule({match = { class = "^(nemo|pavucontrol|file-roller|code-oss|discord|com.discordapp.Discord|steam|makemkv|Ledger Live|Enpass|Signal)$" }, opacity = "0.9 0.9"})
hl.window_rule({match = { class = "^jetbrains-.*$" }, opacity = "0.9 0.9"})
hl.window_rule({match = { class = "^(pavucontrol|file-roller)$" }, float = true})
hl.window_rule({match = { class = "slurp" }, no_dim = true, no_anim = true})

hl.window_rule({match = { class = "steam" }, workspace = "3 silent"})
hl.window_rule({match = { class = "(discord|com.discordapp.Discord)$" }, workspace = "2 silent"})


-- Handle Zen extensions spawn as floating windows
hl.on("window.open", function(w)
    if w.class ~= "app.zen_browser.zen" then return end
    if w.initial_title ~= "Zen Browser" then return end

    local ff_windows = hl.get_windows({ class = "app.zen_browser.zen" })
    if #ff_windows <= 1 then return end

    local sub
    sub = hl.on("window.title", function(tw)
        if tw.address ~= w.address then return end
        if tw.title == ""
            or tw.title == "Zen Browser"
            or tw.title == "about:blank"
            or tw.title:match("^about:.*Zen Browser$") then return end

        sub:remove()

        if tw.title:match("^Extension:") or tw.title:match("^Erweiterung:") then
            hl.dispatch(hl.dsp.window.float({ action = "set", window = w }))
            hl.dispatch(hl.dsp.window.resize({ x = 800, y = 600, window = tw }))
            hl.dispatch(hl.dsp.window.center({ window = tw }))
            hl.dispatch(hl.dsp.focus({ window = tw }))
        end
    end)
end)