call plug#begin('~/.vim/plugged')

" Javascript bundle.  Provides syntax highlighting and indentation
Plug 'pangloss/vim-javascript'

" React syntax highlighting and indenting
Plug 'maxmellon/vim-jsx-pretty'

" Git support
Plug 'tpope/vim-fugitive'

" File explorer written in lua
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Status/tabline for vim
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Color preview
Plug 'gorodinskiy/vim-coloresque'

" Wrapper for Prettier
Plug 'prettier/vim-prettier'

" Comment stuff out
Plug 'terrortylor/nvim-comment'

" Asynchronous lint engine
Plug 'dense-analysis/ale'

" Formatting code
Plug 'sbdchd/neoformat'

" Use ripgrep in vim
Plug 'jremmen/vim-ripgrep'

" Highlight trailing whitespaces in red
" Plug 'bronson/vim-trailing-whitespace'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Tokyo Night theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" OneDark theme
Plug 'navarasu/onedark.nvim'

" Material theme
Plug 'marko-cerovac/material.nvim'
" Git decorations
Plug 'lewis6991/gitsigns.nvim'

" Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
Plug 'sindrets/diffview.nvim'

" Automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'

" Python code folding
Plug 'tmhedberg/SimpylFold'

" Elixir support
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'

" Collection of common configurations for Neovim's built-in language server client
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim'
Plug 'onsails/lspkind.nvim'

" Auto-completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Tree-sitter support
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/playground'

" Add icons to other plugins
Plug 'ryanoasis/vim-devicons'

" Display lightbulb in the sign columns whenever textDocument/codeAction
" is available at the current cursor position
Plug 'kosayoda/nvim-lightbulb'

" Add "surroundings" (parentheses, brackets, quotes etc.) support. Allows for easy add/delete/edit of
" such surroundings.
Plug 'tpope/vim-surround'

" Implement vim Popup api in Neovim
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" Fuzzy finder
Plug 'nvim-telescope/telescope.nvim'

" Fancy start screen
Plug 'mhinz/vim-startify'

" Ranger integration
Plug 'francoiscabrol/ranger.vim'

" Delete a buffer without closing the window
Plug 'rbgrouleff/bclose.vim'

" Go language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Debug Adapter Protocol client for Neovim
Plug 'mfussenegger/nvim-dap'

" nvim-dap extension for providing configurations for launching go debugger
Plug 'leoluz/nvim-dap-go'

" UI for nvim-dap
Plug 'rcarriga/nvim-dap-ui'

" Add virtual text support to nvim-dap
Plug 'theHamsta/nvim-dap-virtual-text'

" EasyMotion like plugin allowing you to jump anywhere in a document with few keystrokes
Plug 'phaazon/hop.nvim'

" Use neovim terminal in floating/popup window
Plug 'voldikss/vim-floaterm'

" Useful mappings
Plug 'https://github.com/tpope/vim-unimpaired'

" Place, toggle, display marks
Plug 'https://github.com/kshenoy/vim-signature'

" Statusline/winbar component to show current code context
Plug 'SmiteshP/nvim-navic'

" Github copilot
" Plug 'github/copilot.vim'

call plug#end()
