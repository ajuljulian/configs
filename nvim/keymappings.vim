" shortcut to turn off highlighting after a search (related to hlsearch)
nnoremap <esc><esc> :silent! nohls<cr>

" Pressing <Leader>b will list the available buffers and prepare :b
noremap <leader>b :ls<CR>:b<Space>

" Leader key shortcuts {{{

" shortcuts to edit the vimrc file in a split window and source it.
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Go to tab by tab number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" shortcut to convert the current word to UPPERCASE in insert mode
inoremap <leader>u <esc>viwUi

" shortcut to convert the current word to UPPERCASE in normal mode
nnoremap <leader>u viwUe

" }}}

" keymap Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" FZF exclude files based on .gitignore
nnoremap <C-G> :GFiles<CR>

" Invoke FZF file finder
nnoremap <C-P> :<C-u>FZF<CR>

" Window Tab
nnoremap <C-N> :tabnew<CR>
nnoremap <C-Up> :tabprevious<CR>
nnoremap <C-Down> :tabnext<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <leader>q to close buffer
nnoremap <leader>q :q<CR>
