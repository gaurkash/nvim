local M = {
  "nvim-lualine/lualine.nvim",
}

M.config = function()
  local lualine = require "lualine"

  local opts = {}

  lualine.setup(opts)
end

return M
