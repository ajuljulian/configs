local group = vim.api.nvim_create_augroup("TestAutoGroup", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello, world!'", group = group })

local mystr = "Hello"
vim.api.nvim_create_autocmd("BufEnter", { callback = function()
  print(mystr)
end, group = group
})
