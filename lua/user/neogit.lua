local M = {
  "neogitorg/neogit",
  event = "VeryLazy",
}

M.config = function()
  local neo = require("neogit")
  local wk = require("which-key")

  local opts = {
    integrations = {
      telescope = true,
      diffview = true,
    }
  }

  neo.setup(opts)

  local mappings = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
  }

  wk.add(mappings)
end

return M
