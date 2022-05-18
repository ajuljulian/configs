let g:neoformat_try_formatprg = 1
let g:neoformat_run_all_formatters = 1

let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
let g:neoformat_enabled_css = ['prettier']
"let g:neoformat_enabled_lua = ['lua-fmt']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
