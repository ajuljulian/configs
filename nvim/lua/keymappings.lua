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

-- hop keybindings
vim.api.nvim_set_keymap(
    "n",
    "f",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "n",
    "F",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "o",
    "f",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "o",
    "F",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "",
    "t",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "",
    "T",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>e",
    "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "v",
    "<leader>e",
    "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>",
    {}
)
vim.api.nvim_set_keymap(
    "o",
    "<leader>e",
    "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, inclusive_jump = true })<cr>",
    {}
)
