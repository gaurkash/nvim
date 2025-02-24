local M = {
  "hedyhli/outline.nvim",
  event = "VeryLazy"
}

M.config = function()
  local outline = require "outline"
  local wk = require "which-key"

  local opts = {}

  outline.setup(opts)

  mappings = {
    { "<leader>o", "<cmd>Outline<cr>", desc = "Symbols Outline" }
  }

  wk.add(mappings)
end

return M
