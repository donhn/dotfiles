local wezterm = require 'wezterm'
local config = {}

config.default_domain = 'WSL:Ubuntu'

config.window_decorations = "TITLE | RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = .99
-- config.background = {
--     {
--         source = { File = 'C:/Users/DonNguyen/Pictures/Backgrounds/exodus.jpg' },
--         hsb = { brightness = 0.05 },
--         opacity = 1,
--     },
-- }
config.win32_system_backdrop = "Auto"

config.color_scheme = 'Gruvbox dark, hard (base16)'
config.font = wezterm.font (
    'MesloLGS Nerd Font',
    {
        weight = 'Regular'
    }
)
config.font_size = 10

return config