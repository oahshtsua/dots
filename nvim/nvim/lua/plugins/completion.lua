return {
	"saghen/blink.cmp",
	-- use a release tag to download pre-built binaries
	version = "1.*",
	enabled = false,
	opts = {
		keymap = { preset = "enter" },
		appearance = {
			nerd_font_variant = "none",
		},
		-- Disable icons
		completion = {
			menu = {
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
					},
				},
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
	opts_extend = { "sources.default" },
}
