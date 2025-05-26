return {
	"stevearc/conform.nvim",
	opts = function()
		local formatters_by_ft = {
			go = { "goimports" },
			lua = { "stylua" },
			python = { "ruff_organize_imports", "ruff_format" },
			typst = { "typstyle" },
		}

		local prettier_fts = {
			"css",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"markdown",
			"markdown_inline",
			"typescript",
			"typescriptreact",
			"yaml",
		}

		for _, ft in ipairs(prettier_fts) do
			formatters_by_ft[ft] = { "prettierd" }
		end
		return {
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 500,
			},
			formatters_by_ft = formatters_by_ft,
		}
	end,
}
