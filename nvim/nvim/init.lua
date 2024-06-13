-- Settings --
-- Editor UI
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 10
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.completeopt = { "menuone", "noinsert" }

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
	{ "neovim/nvim-lspconfig" },
	{ "stevearc/conform.nvim" },
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
		height = 0.95,
		width = 0.8,
		row = 0.1,
		border = "single",
		preview = {
			title = false,
			vertical = "down:50%",
			layout = "vertical",
		},
	},
	defaults = {
		cwd_prompt = false,
	},
})

-- LSP
local lspconfig = require("lspconfig")
local lsp_servers = {
	gopls = {},
	pyright = {},
	tsserver = {},
}

for server, config in pairs(lsp_servers) do
	lspconfig[server].setup(config)
end

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(event)
		-- Buffer local mappings.
		-- See :help vim.lsp.* for documentation on any of the below functions
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
	end,
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
		python = { "isort", "ruff_format" },
		typescript = { "prettierd" },
		typescriptreact = { "prettierd" },
	},
})

-- Keymaps --
-- General
vim.keymap.set("n", "<leader>ww", "<cmd>write<cr>")
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>n", "<cmd>:Lexplore<cr>")

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

-- Colorscheme --
vim.cmd("colorscheme operandi")
