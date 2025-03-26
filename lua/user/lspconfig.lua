local M = {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
}

local function lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_buf_set_keymap
  keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
end

local function lsp_diagnostics()
  vim.diagnostic.config {
    virtual_text = false,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
      focusable = true,
      style = "minimal",
      border = "rounded",
      header = "",
      prefix = "",
    },
  }
end

M.on_attach = function(client, bufnr)
  lsp_keymaps(bufnr)
end

M.capabilities = function()
  local require_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
  if require_ok then
    return cmp_lsp.default_capabilities()
  end

  return vim.lsp.protocol.make_client_capabilities()
end

M.config = function()
  local lspconfig = require "lspconfig"
  local wk = require "which-key"

  lsp_diagnostics()

  local mappings = {
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
    { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
    { "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Info" },
  }

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.buf.hover()
  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.buf.signature_help()

  lspconfig["clangd"].setup({
    on_attach = M.on_attach,
    capabilities = M.capabilities(),
    settings = {}
  })

  lspconfig["lua_ls"].setup({
    on_attach = M.on_attach,
    capabilities = M.capabilities(),
    settings = {}
  })

  lspconfig["rust_analyzer"].setup({
    on_attach = M.on_attach,
    capabilities = M.capabilities(),
    settings = {}
  })

  wk.add(mappings)
end

return M
