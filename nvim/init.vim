set nocompatible

" Control number of spaces inserted when tab key is pressed
set tabstop=2

" Number of spaces inserted for indentation
set shiftwidth=2

" Insert spaces whenever tab key is pressed
set expandtab

" Activate line numbering
set number

" Automatically indent the next line to match the current line's indentation
set autoindent

" Highlight the cursor line
set cursorline

" Highlight search results
set hlsearch

" Adjust default color group
set background=dark

" Automatically read a file again when vim detects that the file has changed
" outside of vim
set autoread

" Prevent line numbers from being copied when selecting with the mouse
set mouse+=a

" Alias unnamed register to the + register to make copying and pasting to the
" system clipboard easier
set clipboard=unnamedplus

" Control the position of a new window
set splitbelow
set splitright

" Avoid showing message extra message when using completion
set shortmess+=c

colorscheme default
highlight Comment cterm=italic gui=italic

" Enable syntax highlighting
syntax enable

filetype plugin indent on

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Vimscript file settings ------------------------ {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Define leader and local leader
let mapleader = "\<space>"
let maplocalleader = "\\"

" Automatically reload file in vim as soon as it changes on disk.
":set autoread | au CursorHold * checktime | call feedkeys("lh")

" Color theme
if (has("termguicolors"))
  set termguicolors
endif

let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

autocmd QuickFixCmdPost *grep* cwindow

" Ale
let b:ale_fixers = ['prettier', 'eslint']

" Load shortcuts
source ~/.config/nvim/keymappings.vim

" Plugins {{{
source ~/.config/nvim/vim-plug/plugins.vim
" }}}

" Plugin configuration
source ~/.config/nvim/plug-config/indentline.vim
source ~/.config/nvim/plug-config/nvim-tree.vim
source ~/.config/nvim/plug-config/neoformat.vim

luafile ~/.config/nvim/lua/plugins/compe-config.lua

luafile ~/.config/nvim/lua/plugins/lspsaga.lua

" Connect to launguage servers {{{
"luafile ~/.config/nvim/lua/lsp/python-ls.lua
"luafile ~/.config/nvim/lua/lsp/ts-ls.lua
luafile ~/.config/nvim/lua/lsp/elixir-ls.lua
luafile ~/.config/nvim/lua/lsp/bash-ls.lua
luafile ~/.config/nvim/lua/lsp/lsp-config.lua
luafile ~/.config/nvim/lua/lsp/lua-ls.lua
luafile ~/.config/nvim/lua/lsp/golang-ls.lua
" }}}

" vim-mix-format
let g:mix_format_on_save = 1

" Only show a short message in the command-line bar.
" You can see the stacktrace via :messages
let g:mix_format_silent_errors = 0

" Disable theme in terminal vim - this is getting rid of the annoying purple
" background color of floating windows.  I'm not sure if it's the correct way
" of doing it, but seems to be working.
if !has("gui_running")
    colorscheme default
    " for which-key and floatwindow of fzf
    highlight Pmenu guibg=#3A3A3A
endif

" Lightbulb
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

" Don't automatically insert a comment character after hitting <Enter>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Comment out a line
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
" }}}
"
command! Scratch lua require'tools'.makeScratch()
command! Hello lua require'tools'.hello()
command! CurLine lua require'tools'.currentLineInfo()
command! PrintCurLine lua require'tools'.printCurLine()
