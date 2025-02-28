local M = {
  "nvim-tree/nvim-tree.lua",
}

M.config = function()
  local tree = require("nvim-tree")
  local wk = require("which-key")

  local opts = {
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = {
        enable = true,
        ignore_list = {},
      },
      exclude = false,
    },
  }

  tree.setup(opts)

  local mappings = {
    { "<leader>e", ":NvimTreeToggle<CR>", desc = "Explorer" },
  }

  wk.add(mappings)
end

return M
