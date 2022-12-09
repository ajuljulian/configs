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
-- Keeping it commented out because it slowls things down.
-- vim.lsp.set_log_level("debug")

-- require("autocommands.example1")
--require('autocommands.example2')

-- Show current code context in winbar
vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

-- Set completeopt to have a better completion experience
vim.opt.completeopt = {"menuone", "noselect"}

vim.o.termguicolors = true

vim.cmd("source ~/.config/nvim/vim-plug/plugins.vim")
-- require("plugins")

-- Shortcuts
vim.cmd("source ~/.config/nvim/keymappings.vim")

-- Plugin configuration
vim.cmd("source ~/.config/nvim/plug-config/neoformat.vim")
vim.cmd("source ~/.config/nvim/plug-config/jsx-pretty.vim")
vim.cmd("source ~/.config/nvim/plug-config/airline.vim")
vim.cmd("source ~/.config/nvim/plug-config/ale.vim")
vim.cmd("source ~/.config/nvim/plug-config/elixir-mix-format.vim")
vim.cmd("source ~/.config/nvim/plug-config/vim-go.vim")

require("plugins.treesitter")
require("plugins.nvim-cmp-config")
require("plugins.lua-snippets")
require("plugins.nvim-tree")
require("plugins.lspsaga")
require("plugins.tokyonight")
require("plugins.onedark")
require("plugins.material")
require("plugins.nvim-comment")
require("plugins.hop")
require("plugins.dap")
require("plugins.gitsigns")
require("lsp.lsp-config")

-- Lightbulb
vim.cmd("autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()")

-- Don't automatically insert a comment character after hitting <Enter>
vim.cmd("autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
