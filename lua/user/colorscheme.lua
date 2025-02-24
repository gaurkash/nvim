M = {
  "rafamadriz/neon",
  lazy = false,
  priority = 1000
}

M.config = function()
  vim.g.neon_style = "dark"
  vim.cmd.colorscheme "neon"
end

return M
