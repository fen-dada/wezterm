local wezterm = require 'wezterm'
local appearence = require 'appearence'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.text_background_opacity = 0.6
config.window_background_opacity = 0.7
config.macos_window_background_blur = 20


config.font = wezterm.font_with_fallback({
  "FiraCode Nerd Font",
  "Apple Color Emoji",
  "azuki_font",
})

config.initial_cols = 150
config.initial_rows = 50

config.window_decorations = "RESIZE"

config.enable_tab_bar = false
config.max_fps = 120

config.animation_fps = 120

config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}
config.font_size = 14

local function font_with_fallback(name, params)
  local names = { name, "Apple Color Emoji", "azuki_font" }
  return wezterm.font_with_fallback(names, params)
end

config.color_scheme = 'catppuccin-macchiato' --'Catppuccin Frappe'
-- config.font = wezterm.font_with_fallback {
-- {
-- family = 'FiraCode Nerd Font',
-- weight = 'Medium',
-- harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
-- },
-- { family = 'Terminus', weight = 'Bold' },
-- 'Noto Color Emoji',
-- }
--config.font = wezterm.font_with_fallback{
--family = "FiraCode Nerd Font",
--weight = "Medium",
--harfbuzz_features = {"calt=0", "clig=0", "liga=0"},
--}
config.font = font_with_fallback("FiraCode Nerd Font", { weight = "Medium" })

config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}

return config
