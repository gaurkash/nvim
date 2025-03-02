M = {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000
}

M.config = function()
  vim.cmd.colorscheme "kanagawa-wave"
end

return M
