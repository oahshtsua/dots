return {
	"ibhagwan/fzf-lua",
	opts = {
		winopts = {
			height = 1,
			width = 1,
			border = "single",
			preview = {
				title = false,
				layout = "vertical",
			},
		},
		fzf_colors = {
			["fg"] = { "fg", "Comment" },
			["bg"] = { "bg", "Normal" },
			["hl"] = { "fg", "Function" },
			["fg+"] = { "fg", "Normal" },
			["bg+"] = { "bg", "CursorLine" },
			["hl+"] = { "fg", "Function" },
			["info"] = { "fg", "Comment" },
			["prompt"] = { "fg", "Normal" },
			["pointer"] = { "fg", "Normal" },
			["marker"] = { "fg", "Type" },
			["spinner"] = { "fg", "Normal" },
			["header"] = { "fg", "Comment" },
			["gutter"] = "-1",
		},
		defaults = {
			cwd_prompt = false,
		},
	},
}
