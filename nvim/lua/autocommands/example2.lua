vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.schedule(function()
      print("Hey, we got called")
    end)
  end,
})
