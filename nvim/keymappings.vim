" shortcut to turn off highlighting after a search (related to hlsearch)
nnoremap <esc><esc> :silent! nohls<cr>

" Pressing <Leader>b will list the available buffers and prepare :b
noremap <leader>b :ls<CR>:b<Space>

" shortcuts to edit the vimrc file in a split window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

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

" keymap Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map NerdTree
map <C-\> :NERDTreeToggle<CR>
map <C-Z> :NERDTreeToggle<CR>

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

" source init.vim file
nnoremap ,sv :source $MYVIMRC<cr>

" trigger vim-which-key if no other key is pressed 1000ms after pressing the
" leader key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" or use command LspSagaFinder
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

" code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" or use command
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
