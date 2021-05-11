set nocompatible

" Control number of spaces inserted when tab key is pressed
set tabstop=2

" Number of spaces inserted for indentation
set shiftwidth=4

" Insert spaces whenever tab key is pressed
set expandtab

" Activate line numbering
set number

" Automatically indent the next line to match the current line's indentation
set autoindent

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
let mapleader = "\<Space>"
let maplocalleader = "\\"

" Automatically reload file in vim as soon as it changes on disk.
":set autoread | au CursorHold * checktime | call feedkeys("lh")

" Color theme
if (has("termguicolors"))
  set termguicolors
endif

let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

autocmd FileType html setlocal sw=2 sts=2
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd QuickFixCmdPost *grep* cwindow
let g:prettier#autoformat = 0

" Ale
let b:ale_fixers = ['prettier', 'eslint']

" Load shortcuts
source ~/.config/nvim/keymappings.vim

" Plugins {{{
source ~/.config/nvim/vim-plug/plugins.vim
" }}}

call glaive#Install()

" Plugin configuration
source ~/.config/nvim/plug-config/indentline.vim
source ~/.config/nvim/plug-config/nerdtree.vim

luafile ~/.config/nvim/lua/plugins/compe-config.lua

luafile ~/.config/nvim/lua/plugins/lspsaga.lua

" Connect to launguage servers {{{
"luafile ~/.config/nvim/lua/lsp/python-ls.lua
"luafile ~/.config/nvim/lua/lsp/ts-ls.lua
luafile ~/.config/nvim/lua/lsp/elixir-ls.lua
luafile ~/.config/nvim/lua/lsp/bash-ls.lua
luafile ~/.config/nvim/lua/lsp/lsp-config.lua
" }}}

" Disable quote concealing.  For some reason, the IndentLine plugin needs
" set the conceal level to 2.  This line allows us to keep our conceal
" level
let g:indentLine_setConceal = 0

" vim-mix-format
let g:mix_format_on_save = 1

" Only show a short message in the command-line bar.
" You can see the stacktrace via :messages
let g:mix_format_silent_errors = 0

" Autoformatting using codefmt {{{
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType vue,javascript AutoFormatBuffer prettier
augroup END
" }}}

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

" Comment out a line
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
" }}}
