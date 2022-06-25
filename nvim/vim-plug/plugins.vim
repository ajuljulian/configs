call plug#begin('~/.vim/plugged')

" Javascript bundle.  Provides syntax highlighting and indentation
" source: https://github.com/pangloss/vim-javascript
Plug 'pangloss/vim-javascript'

" React syntax highlighting and indenting
" source: https://github.com/MaxMEllon/vim-jsx-pretty
Plug 'maxmellon/vim-jsx-pretty'

" Git support
" source: https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" File explorer written in lua
" source: https://github.com/kyazdani42/nvim-tree.lua
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Status/tabline for vim
" source: https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color preview
" source: https://github.com/gko/vim-coloresque
Plug 'gorodinskiy/vim-coloresque'

" Wrapper for Prettier
" source: https://github.com/prettier/vim-prettier
Plug 'prettier/vim-prettier'

" Comment stuff out
" source: https://github.com/b3nj5m1n/kommentary
Plug 'terrortylor/nvim-comment'

" Asynchronous lint engine
" source: https://github.com/dense-analysis/ale
Plug 'dense-analysis/ale'

" Formatting code
" source: https://github.com/sbdchd/neoformat
Plug 'sbdchd/neoformat'

" Display thin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" Use ripgrep in vim
" source: https://github.com/Yggdroot/indentLine
Plug 'jremmen/vim-ripgrep'

" Highlight trailing whitespaces in red
" source: https://github.com/bronson/vim-trailing-whitespace
Plug 'bronson/vim-trailing-whitespace'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Tokyo Night theme
" source: https://github.com/jiangmiao/auto-pairs
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" OneDark theme
Plug 'navarasu/onedark.nvim'

" Material theme
" source: https://github.com/marko-cerovac/material.nvim
Plug 'marko-cerovac/material.nvim'
" Git decorations
" source: https://github.com/lewis6991/gitsigns.nvim
Plug 'lewis6991/gitsigns.nvim'

" Automatic closing of quotes, parenthesis, brackets, etc.
" source: https://github.com/Raimondi/delimitMate
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
" source: https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Debug Adapter Protocol client for Neovim
" source: https://github.com/mfussenegger/nvim-dap
Plug 'mfussenegger/nvim-dap'

" nvim-dap extension for providing configurations for launching go debugger
" source: https://github.com/leoluz/nvim-dap-go
Plug 'leoluz/nvim-dap-go'

" UI for nvim-dap
" source: https://github.com/rcarriga/nvim-dap-ui
Plug 'rcarriga/nvim-dap-ui'

" Add virtual text support to nvim-dap
" source: https://github.com/theHamsta/nvim-dap-virtual-text
Plug 'theHamsta/nvim-dap-virtual-text'

" EasyMotion like plugin allowing you to jump anywhere in a document with few keystrokes
" https://github.com/phaazon/hop.nvim
Plug 'phaazon/hop.nvim'

" Use neovim terminal in floating/popup window
" source: https://github.com/voldikss/vim-floaterm
Plug 'voldikss/vim-floaterm'

" Github copilot
" source: https://github.com/github/copilot-docs
" Plug 'github/copilot.vim'

call plug#end()
