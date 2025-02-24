local M = {
  "nvim-tree/nvim-tree.lua",
}

M.config = function()
  local tree = require "nvim-tree"
  local wk = require "which-key"

  local opts = {}

  tree.setup(opts)

  local mappings = {
    { "<leader>e", ":NvimTreeToggle<CR>", desc = "Explorer" },
  }

  wk.add(mappings)
end

return M
