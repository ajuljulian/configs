" Slowly moving settings from vimL to lua. Putting them in  `basic.lua` for now.
lua require('basic')

" Use vim settings rather than vi settings.  Is this even needed nowadays?
set nocompatible
" colorscheme desert

" Without this, menus such as which-key's have an annoying purple background.
highlight Pmenu guibg=#3A3A3A

" Set color of cursor showing on the sign column
" highlight CursorLineSign guibg=orange

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

" Plugins {{{
source ~/.config/nvim/vim-plug/plugins.vim
" }}}

" Set theme. For Tokyonight, this has to happen after sourcing the vim-plug/plugins.vim file.
let g:tokyonight_style = "storm"
colorscheme tokyonight

" Ale
let b:ale_fixers = ['prettier', 'eslint']

" Load shortcuts
source ~/.config/nvim/keymappings.vim


" Plugin configuration
source ~/.config/nvim/plug-config/indentline.vim
source ~/.config/nvim/plug-config/neoformat.vim

luafile ~/.config/nvim/lua/plugins/nvim-cmp-config.lua
luafile ~/.config/nvim/lua/plugins/lua-snippets.lua
luafile ~/.config/nvim/lua/plugins/nvim-tree.lua
luafile ~/.config/nvim/lua/plugins/lspsaga.lua

" Git decorations
luafile ~/.config/nvim/lua/plugins/gitsigns.lua

" Connect to language servers
luafile ~/.config/nvim/lua/lsp/lsp-config.lua

" vim-mix-format
let g:mix_format_on_save = 1

" Only show a short message in the command-line bar.
" You can see the stacktrace via :messages
let g:mix_format_silent_errors = 0

" Lightbulb
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

" Don't automatically insert a comment character after hitting <Enter>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

