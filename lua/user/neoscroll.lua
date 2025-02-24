local M = {
  "karb94/neoscroll.nvim"
}

M.config = function()
  local scroll = require "neoscroll"

  local opts = {}

  scroll.setup(opts)
end

return M
