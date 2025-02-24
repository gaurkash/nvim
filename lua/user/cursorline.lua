local M = {
  "ya2s/nvim-cursorline",
}

M.config = function()
  local cursorline = require("nvim-cursorline")

  local opts = {
    cursorline = {
      enable = true,
      timeout = 1000,
      number = false,
    },
    cursorword = {
      enable = true,
      min_length = 3,
      hl = { underline = true },
    },
  }

  cursorline.setup(opts)
end

return M
