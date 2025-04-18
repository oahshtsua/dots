-- Settings --
-- Editor UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.completeopt = { "menuone", "noinsert" }
vim.opt.laststatus = 3
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = ""
vim.opt.foldlevelstart = 99

-- Editing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.hlsearch = true
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.list = true
vim.opt.listchars = { tab = "⟶ ", trail = "*", nbsp = "␣" }

-- Netrw
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_liststyle = 3

-- Leader
vim.g.mapleader = " "

-- Plugins --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{ "ibhagwan/fzf-lua" },
	{ "stevearc/conform.nvim" },
	{ "lewis6991/gitsigns.nvim" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "stevearc/oil.nvim" },
})

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = {},
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
})

-- FzfLua
require("fzf-lua").setup({
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
})

-- LSP
local lsp_servers = {
	gopls = {
		cmd = { "gopls" },
		filetypes = { "go", "gomod", "gowork", "gotmpl" },
		single_file_support = true,
	},
	pyright = {
		cmd = { "pyright-langserver", "--stdio" },
		filetypes = { "python" },
		settings = {
			python = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "openFilesOnly",
					useLibraryCodeForTypes = true,
				},
			},
		},
		single_file_support = true,
	},
	terraformls = {
		cmd = { "terraform-ls", "serve" },
		filetypes = { "terraform", "terraform-vars" },
	},
	ts_ls = {
		cmd = { "typescript-language-server", "--stdio" },
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
		init_options = {
			hostInfo = "neovim",
		},
		single_file_support = true,
	},
	tinymist = {
		cmd = { "tinymist" },
		filetypes = { "typst" },
		settings = {
			exportPdf = "onSave",
		},
		single_file_support = true,
	},
}

for server, config in pairs(lsp_servers) do
	vim.lsp.config(server, config)
	vim.lsp.enable(server)
end

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(event)
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
		end
	end,
})

-- Diagnostics
vim.diagnostic.config({
	virtual_text = { current_line = true },
	signs = false,
})

-- Conform
require("conform").setup({
	format_on_save = {
		lsp_fallback = true,
		timeout_ms = 500,
	},
	formatters_by_ft = {
		go = { "goimports" },
		javascript = { "prettierd" },
		javascriptreact = { "prettierd" },
		lua = { "stylua" },
		python = { "ruff_organize_imports", "ruff_format" },
		tf = { "terraform_fmt" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
		typst = { "typstyle" },
	},
})

-- Indent
require("ibl").setup({
	indent = { char = "▏", tab_char = "▏" },
	scope = { enabled = false },
})

-- Oil
require("oil").setup({
	default_file_explorer = false,
	delete_to_trash = true,
	columns = {
		"permissions",
	},
})

-- Gitsigns
require("gitsigns").setup({
	signs = {
		add = { text = "▍" },
		change = { text = "▍" },
		delete = { text = "▍" },
		topdelete = { text = "▍" },
	},

	signs_staged_enable = false,

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
		map("n", "<leader>hb", gitsigns.blame_line)
	end,
})

-- Keymaps --
-- General
vim.keymap.set("n", "<leader>ww", "<cmd>write<cr>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-i>", "<C-i>zz")
vim.keymap.set("n", "<leader>n", "<cmd>:Lexplore<cr>")
vim.keymap.set("i", "<C-h>", "<C-Left>", { desc = "Move cursor left" })
vim.keymap.set("i", "<C-l>", "<C-Right>", { desc = "Move cursor right" })

-- Highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Splits
vim.keymap.set("n", "<leader>wv", "<cmd>wincmd v<cr>")

vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Move focus to the right window" })

-- Completion
vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")

-- Diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Fzf
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>ff", fzf.files)
vim.keymap.set("n", "<leader>fs", fzf.live_grep)
vim.keymap.set("n", "<leader>fw", fzf.grep_cword)
vim.keymap.set("n", "<leader>fr", fzf.resume)
vim.keymap.set("n", "<leader>fh", fzf.command_history)

-- Oil
vim.keymap.set("n", "<leader>fb", "<cmd>Oil<cr>")

-- Colorscheme --
vim.cmd("colorscheme flexlokey")
