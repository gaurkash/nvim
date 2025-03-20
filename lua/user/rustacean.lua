local M = {
  "mrcjkb/rustaceanvim",
  lazy = false,
  ft = { "rust" },
}

M.config = function()
  local lspconfig = require "user.lspconfig"
  -- vim.g.rustaceanvim = {
  --   tools = {},
  --   server = {
  --     on_attach = function(client, bufnr)
  --       lspconfig.on_attach(client, bufnr)
  --     end,
  --
  --     capabilities = lspconfig.capabilities(),
  --   }
  -- }
end

return M
