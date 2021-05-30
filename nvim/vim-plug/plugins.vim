call plug#begin('~/.vim/plugged')

" Javascript bundle.  Provides syntax highlighting and indentation
Plug 'pangloss/vim-javascript'

" Git support
Plug 'tpope/vim-fugitive'

" File explorer written in lua
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Status/tabline for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color preview
Plug 'gorodinskiy/vim-coloresque'

" Wrapper for Prettier
Plug 'prettier/vim-prettier'

" React syntax highlighting and indenting
Plug 'maxmellon/vim-jsx-pretty'

" Comment stuff out
Plug 'tpope/vim-commentary'

" Asynchronous lint engine
Plug 'dense-analysis/ale'

" Formatting code
Plug 'sbdchd/neoformat'

" Display thin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" Use ripgrep in vim
Plug 'jremmen/vim-ripgrep'

" Highlight trailing whitespaces in red
Plug 'bronson/vim-trailing-whitespace'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Show git diff in the sign column
Plug 'airblade/vim-gitgutter'

" Automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'

" Python code folding
Plug 'tmhedberg/SimpylFold'

" Elixir support
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'

" Collection of common configurations for Neovim's built-in language server client
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" Auto-completion
Plug 'hrsh7th/nvim-compe'

" Tree-sitter support
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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

" Display available keybindings in popup
Plug 'liuchengxu/vim-which-key'

" Ranger integration
Plug 'francoiscabrol/ranger.vim'

" Delete a buffer without closing the window
Plug 'rbgrouleff/bclose.vim'

call plug#end()
