local api = vim.api
local M = {}
function M.makeScratch()
  api.nvim_command('enew') -- equivalent to :enew
  --vim.bo[0].buftype=nofile -- set the current buffer's (buffer 0) buftype to nofile
  --vim.bo[0].bufhidden=hide
  --vim.bo[0].swapfile=false
end

function M.hello()
  api.nvim_command('echo "Hello, Nvim!"')
end

function M.currentLineInfo()
  local linenr = api.nvim_win_get_cursor(0)[1]
  local curline = api.nvim_buf_get_lines(0, linenr, linenr + 1, false)[1]
  print(string.format("Current line [%d] has %d bytes", linenr, #curline))
end

function M.printCurLine()
  print(tostring(vim.api.nvim_get_current_line()))
end
return M
