local M = {
  "lukas-reineke/indent-blankline.nvim"
}

M.config = function()
  local lbl = require "ibl"

  local opts = {}

  lbl.setup(opts)
end

return M
