return {
	{
		"akinsho/git-conflict.nvim",
		version = "*",
		config = true,
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "▍" },
				change = { text = "▍" },
				delete = { text = "▍" },
				topdelete = { text = "▍" },
			},
			signs_staged_enable = false,
			current_line_blame = false,

			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map("n", "<leader>hp", function()
					gitsigns.nav_hunk("prev")
				end)
				map("n", "<leader>hn", function()
					gitsigns.nav_hunk("next")
				end)
				-- Actions
				map("n", "<leader>hs", gitsigns.stage_hunk)
				map("n", "<leader>hr", gitsigns.reset_hunk)
				map("n", "<leader>hb", gitsigns.blame_line)
			end,
		},
	},
}
