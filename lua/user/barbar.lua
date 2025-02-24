local M = {
  "romgrk/barbar.nvim",
}

M.config = function()
  local barbar = require "barbar"

  local opts = {
    sidebar_filetypes = {
      NvimTree = true,
    }
  }

  vim.g.barbar_auto_setup = false
  barbar.setup(opts)
end

return M
