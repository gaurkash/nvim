local M = {
  "nvimtools/none-ls.nvim"
}

M.config = function()
  local null_ls = require "null-ls"

  local opts = {
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.completion.spell,
    },
  }

  null_ls.setup(opts)
end

return M
