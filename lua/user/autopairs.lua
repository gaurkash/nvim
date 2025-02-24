local M = {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
}

M.config = function()
  local autopairs = require "nvim-autopairs"

  local opts = {}

  autopairs.setup(opts)
end

return M
