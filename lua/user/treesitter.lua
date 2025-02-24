local M = {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
  },
}

M.config = function()
  local ts = require "nvim-treesitter.configs"
  local wk = require "which-key"

  local opts = {
    ensure_installed = {
      "lua"
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    },
    autopairs = {
      enable = true
    },
  }

  ts.setup(opts)

  local mappings = {
  }

  wk.add(mappings)
end

return M
