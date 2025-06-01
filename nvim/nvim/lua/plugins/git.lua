return {
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
		preview_config = {
			border = "single",
		},

		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "]c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end)

			map("n", "[c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end)

			-- Actions
			map("n", "<leader>hs", gitsigns.stage_hunk)
			map("n", "<leader>hr", gitsigns.reset_hunk)
			map("n", "<leader>hp", gitsigns.preview_hunk)
			map("n", "<leader>hb", function()
				gitsigns.blame_line({ full = true })
			end)
		end,
	},
}
