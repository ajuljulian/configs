-- DAP (Debug Adapter Protocol) client implementation configuration.
-- using one config file for all DAP related plugins.

-- set debug-specific key mappings
vim.api.nvim_set_keymap("n", "<F5>", ":lua require('dap').continue()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F1>", ":lua require('dap').step_over()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F2>", ":lua require('dap').step_into()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F3>", ":lua require('dap').step_out()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<localleader>b", ":lua require('dap').toggle_breakpoint()<cr>", {noremap = true})
vim.api.nvim_set_keymap(
    "n",
    "<localleader>B",
    ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>",
    {noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<localleader>lp",
    ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')<cr>",
    {noremap = true}
)
vim.api.nvim_set_keymap("n", "<localleader>dr", ":lua require('dap').repl.open()<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<localleader>dt", ":lua require('dap-go').debug_test()<cr>", {noremap = true})

-- nvim-dap-go plugin configuration
require("dap-go").setup()

-- nvim-dap-ui plugin configuration
require("dapui").setup()

-- nvim-dap-virtual-text configuration
require("nvim-dap-virtual-text").setup()

-- use nvim-dap events to open/close nvim-dap-ui windows automatically
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
