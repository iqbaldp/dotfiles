local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	color_scheme = "Catppuccin Mocha",
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	-- color_scheme = "Nord (Gogh)",
	font_size = 15,

	-- Transparansi & blur
	window_background_opacity = 0.7,
	macos_window_background_blur = 30,

	-- >>> KUNCI KONTRAS <<<
	text_background_opacity = 1.0, -- bikin teks selalu jelas

	-- (opsional) bikin bold lebih terang (berguna utk p10k)
	bold_brightens_ansi_colors = true,

	initial_rows = 35,
	initial_cols = 110,

	window_padding = { left = 5, right = 5, top = 2, bottom = 2 },

	-- Mouse behavior
	mouse_bindings = {
		-- Disable right-click paste
		{
			event = { Down = { streak = 1, button = "Right" } },
			mods = "NONE",
			action = wezterm.action.Nop,
		},
		-- Scroll up/down in terminal buffer instead of command history
		{
			event = { Down = { streak = 1, button = { WheelUp = 1 } } },
			mods = "NONE",
			action = wezterm.action.ScrollByPage(-0.3),
		},
		{
			event = { Down = { streak = 1, button = { WheelDown = 1 } } },
			mods = "NONE",
			action = wezterm.action.ScrollByPage(0.3),
		},
	},

	keys = {
		{
			key = "q",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = "'",
			mods = "CTRL",
			action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
		},
	},
}

-- Always Centered --
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	local guiwin = window:gui_window()

	-- ambil ukuran screen utama
	local screen = wezterm.gui.screens().main
	local width = guiwin:get_dimensions().pixel_width
	local height = guiwin:get_dimensions().pixel_height

	-- hitung posisi supaya center
	local x = (screen.width - width) / 2
	local y = (screen.height - height) / 2

	guiwin:set_position(x, y)
end)

return config
