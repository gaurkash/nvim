local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  }
}

M.config = function()
  local mason = require "mason"
  local mason_lsp = require "mason-lspconfig"

  local mason_opts = {
    ui = {
      border = "rounded"
    }
  }
  mason.setup(mason_opts)

  local servers = {
    "lua_ls",
    "rust_analyzer",
    "clangd"
  }

  local mason_lsp_opts = {
    ensure_installed = servers
  }
  mason_lsp.setup(mason_lsp_opts)

end

return M
