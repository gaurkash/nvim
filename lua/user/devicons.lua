local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy"
}

M.config = function()
  local icons = require "nvim-web-devicons"

  local opts = {}

  icons.setup(opts)
end

return M
