" Slowly moving settings from vimL to lua. Putting them in  `basic.lua` for now.
lua require('basic')

" Use vim settings rather than vi settings.  Is this even needed nowadays?
set nocompatible

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect

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

autocmd QuickFixCmdPost *grep* cwindow

source ~/.config/nvim/vim-plug/plugins.vim

" Load shortcuts
source ~/.config/nvim/keymappings.vim

" Plugin configuration
source ~/.config/nvim/plug-config/indentline.vim
source ~/.config/nvim/plug-config/neoformat.vim
source ~/.config/nvim/plug-config/jsx-pretty.vim
source ~/.config/nvim/plug-config/airline.vim
source ~/.config/nvim/plug-config/ale.vim
source ~/.config/nvim/plug-config/elixir-mix-format.vim

lua require('plugins.treesitter')
lua require('plugins.nvim-cmp-config')
lua require('plugins.lua-snippets')
lua require('plugins.nvim-tree')
lua require('plugins.lspsaga')
lua require('plugins.tokyonight')
lua require('plugins.onedark')

" Git decorations
lua require('plugins.gitsigns')

" Connect to language servers
lua require('lsp.lsp-config')

colorscheme onedark

" Lightbulb
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

" Don't automatically insert a comment character after hitting <Enter>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

