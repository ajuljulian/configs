--vim.opt.nocompatible = true

-- Enable syntax highlighting
vim.cmd "syntax enable"

vim.cmd "filetype plugin indent on"

-- Define leader and local leader
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- Don't hide quotes
vim.g.conceallevel = 0

-- Control number of spaces inserted when tab key is pressed
vim.opt.tabstop = 2

-- Number of spaces inserted for indentation
vim.opt.shiftwidth = 2

-- Insert spaces whenever tab key is pressed
vim.opt.expandtab = true

-- Activate relative line numbering - show relative line numbers except on the current line
vim.opt.number = true
vim.opt.relativenumber = true

-- Automatically indent the next line to match the current line's indentation
vim.opt.autoindent = true

-- Highlight the cursor line
vim.opt.cursorline = true

-- Highlight search results
vim.opt.hlsearch = true

-- Adjust default color group
vim.opt.background = "dark"

-- Automatically read a file again when vim detects that the file has changed
-- outside of vim
vim.opt.autoread = true

-- Prevent line numbers from being copied when selecting with the mouse
--set mouse+=a
vim.opt.mouse = vim.opt.mouse + "a"

-- Alias unnamed register to the + register to make copying and pasting to the
-- system clipboard easier
vim.opt.clipboard = "unnamedplus"

-- Control the position of a new window
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Avoid showing message extra message when using completion
vim.opt.shortmess = vim.opt.shortmess + "c"

-- styles available: darker, lighter, oceanic, palenight, deep ocean
vim.g.material_style = "lighter"

-- Enable LSP logging. Check the log files using `:lua vim.cmd('e'..vim.lsp.get_log_path())`
-- -- Keeping it commented out because it slowls things down.
-- vim.lsp.set_log_level("debug")

-- require("autocommands.example1")
--require('autocommands.example2')
