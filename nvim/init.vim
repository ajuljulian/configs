lua require('basic')

set nocompatible

colorscheme default
highlight Comment cterm=italic gui=italic

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Vimscript file settings ------------------------ {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

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
source ~/.config/nvim/plug-config/neoformat.vim

luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/plugins/nvim-tree.lua
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
