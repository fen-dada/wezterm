-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.text_background_opacity = 0.8


-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Frappe'
--config.font = wezterm.font 'JetBrains Mono'
-- You can specify some parameters to influence the font selection;
config.font = wezterm.font_with_fallback {
  {
    family = 'JetBrains Mono',
    weight = 'Medium',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  },
  { family = 'Terminus', weight = 'Bold' },
  'Noto Color Emoji',
}

-- for example, this selects a Bold, Italic font variant.

config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}
  -- The overall background color of the tab bar when
-- and finally, return the configuration to wezterm
return config


