lua require('keymappings')

" shortcut to turn off highlighting after a search (related to hlsearch)
nnoremap <esc><esc> :silent! nohls<cr>

" Pressing <Leader>b will list the available buffers and prepare :b
noremap <leader>b :ls<CR>:b<Space>

" shortcuts to edit the vimrc file in a split window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" shortcut to convert the current word to UPPERCASE in insert mode
inoremap <leader>u <esc>viwUi

" shortcut to convert the current word to UPPERCASE in normal mode
nnoremap <leader>u viwUe

" keymap Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
nnoremap <leader>sv :source $MYVIMRC<cr>

" trigger vim-which-key if no other key is pressed 1000ms after pressing the
" leader key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

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

" Toggle cursor column highlight
nnoremap <Leader>c :set cursorcolumn!<CR>

nnoremap <C-Z> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
