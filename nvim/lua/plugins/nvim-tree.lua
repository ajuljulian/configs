require "nvim-tree".setup {}

-- Automatically close the tab/vim when nvim-tree is the last window in the tab
vim.cmd [[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]]
