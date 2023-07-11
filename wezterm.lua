local wezterm = require 'wezterm'
local appearence = require 'appearence'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.text_background_opacity = 0.6
config.window_background_opacity = 0.7
config.macos_window_background_blur = 20

font_size = 12


max_fps = 120
animation_fps = 120

config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}

config.color_scheme = 'Catppuccin Frappe'
config.font = wezterm.font_with_fallback {
  {
    family = 'JetBrains Mono',
    weight = 'Medium',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  },
  { family = 'Terminus', weight = 'Bold' },
  'Noto Color Emoji',
}


config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}

return config


