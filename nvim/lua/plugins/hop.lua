require "hop".setup()

vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>lua require'hop'.hint_lines()<cr>", {})
