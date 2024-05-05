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

require("lazy").setup({})

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

vim.keymap.set("n", "<leader>wh", "<cmd>wincmd h<cr>")
vim.keymap.set("n", "<leader>wj", "<cmd>wincmd j<cr>")
vim.keymap.set("n", "<leader>wk", "<cmd>wincmd k<cr>")
vim.keymap.set("n", "<leader>wl", "<cmd>wincmd l<cr>")


-- Colorscheme --
vim.cmd("colorscheme operandi")
