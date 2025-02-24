local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  }
}

M.config = function()
  local telescope = require "telescope"
  local wk = require "which-key"

  local opts = {}

  telescope.setup(opts)

  local mappings = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>",                desc = "Find Files" },
    { "<leader>ft", "<cmd>Telescope live_grep<cr>",                 desc = "Find in Folder" },
    { "<leader>fs", "<cmd>Telescope grep_string<cr>",               desc = "Find String in Folder" },
    { "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Find in Open Files" },
    { "<leader>fm", "<cmd>Telescope man_pages<cr>",                 desc = "Find in man Pages" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>",                   desc = "Find keymaps" },
    { "<leader>ll", "<cmd>Telescope lsp_document_symbols<cr>",      desc = "Find symbols" },
  }

  wk.add(mappings)
end

return M
