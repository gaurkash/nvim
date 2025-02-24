local M = {
  "folke/which-key.nvim",
  event = "VeryLazy"
}

M.config = function()
  local wk = require "which-key"

  local opts = {
    win = {
      border = "rounded"
    }
  }

  wk.setup(opts)

  local mappings = {
    { "<leader>w", proxy = "<c-w>", desc = "Focus Buffer" }
  }

  wk.add(mappings)
end

M.keys = {
  {
    "<leader>?",
    function()
      require("which-key").show({ global = false })
    end,
    desc = "Buffer Local Keymaps (which-key)",
  },
}

return M
