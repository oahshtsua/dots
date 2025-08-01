return {
	"saghen/blink.cmp",
	-- use a release tag to download pre-built binaries
	version = "1.*",
	enabled = true,
	opts = {
		keymap = { preset = "default" },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
	opts_extend = { "sources.default" },
	signature = { enabled = true },
}
