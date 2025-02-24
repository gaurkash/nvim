local M = {
  "matbme/JABS.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
}

M.config = function()
  local jabs = require "jabs"
  local wk = require "which-key"

  local opts = {
    position = {'center', 'top'},
    use_devicons = true,
    symbols = {
      current = "C", -- default 
      split = "S", -- default 
      alternate = "A", -- default 
      hidden = "H", -- default ﬘
      locked = "L", -- default 
      ro = "R", -- default 
      edited = "E", -- default 
      terminal = "T", -- default 
    },
  }

  jabs.setup(opts)

  local mappings = {
    { "<leader>b", ":JABSOpen<cr>", desc = "Buffer List" },
  }

  wk.add(mappings)
end

return M
