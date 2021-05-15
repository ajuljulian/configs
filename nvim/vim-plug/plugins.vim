call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gorodinskiy/vim-coloresque'
Plug 'prettier/vim-prettier'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-projectionist'
Plug 'Yggdroot/indentLine'
Plug 'jremmen/vim-ripgrep'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/SimpylFold'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ryanoasis/vim-devicons'
Plug 'kosayoda/nvim-lightbulb'

" Fancy start screen
Plug 'mhinz/vim-startify'

" Display available keybindings in popup
Plug 'liuchengxu/vim-which-key'

" Ranger integration
Plug 'francoiscabrol/ranger.vim'

" Delete a buffer without closing the window
Plug 'rbgrouleff/bclose.vim'

" Jump to any location specified by exactly two characters
Plug 'justinmk/vim-sneak'

" vim code formatter
"Plug 'google/vim-maktaba'
"Plug 'google/vim-codefmt'
"Plug 'google/vim-glaive'

call plug#end()
