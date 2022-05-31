--print('hello from keymappings.lua')

-- Go to tab by tab number
vim.api.nvim_set_keymap("n", "<leader>1", "1gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>2", "2gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>3", "3gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>4", "4gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>5", "5gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>6", "6gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>7", "7gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>8", "8gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>9", "9gt", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>0", ":tablast<cr>", {noremap = true})

-- Find files using Telescope command-line.
vim.api.nvim_set_keymap("n", "<leader>ff", ':lua require("telescope.builtin").find_files()<cr>', {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fg", ':lua require("telescope.builtin").live_grep()<cr>', {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fb", ':lua require("telescope.builtin").buffers()<cr>', {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>fh", ':lua require("telescope.builtin").help_tags()<cr>', {noremap = true})
