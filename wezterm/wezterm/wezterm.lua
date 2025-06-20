-- Pull in the wezterm API
local wezterm = require("wezterm")
local action = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Spawn a fish shell
config.default_prog = { "/usr/bin/fish" }

config.bold_brightens_ansi_colors = false
config.default_cursor_style = "SteadyBar"
config.enable_tab_bar = true
config.tab_bar_at_bottom = true
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.use_fancy_tab_bar = false
config.switch_to_last_active_tab_when_closing_tab = true
config.window_padding = {
	left = 16,
	right = 16,
	top = 2,
	bottom = 0,
}

-- Font
config.font_size = 17
config.line_height = 1.1
config.underline_thickness = 4
config.harfbuzz_features = { "zero" }

config.color_scheme = "flexoki-light"

-- Tmux like keybinds
config.leader = { key = "b", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- Tab management
	{ mods = "LEADER", key = "c", action = action.SpawnTab("CurrentPaneDomain") },
	{ mods = "LEADER", key = "x", action = action.CloseCurrentTab({ confirm = true }) },
	{ mods = "LEADER", key = "w", action = action.ShowTabNavigator },
	{ mods = "SHIFT", key = "LeftArrow", action = action.ActivateTabRelative(-1) },
	{ mods = "SHIFT", key = "RightArrow", action = action.ActivateTabRelative(1) },
	-- Splitting
	{ mods = "LEADER", key = "h", action = action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ mods = "LEADER", key = "v", action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
}

return config
