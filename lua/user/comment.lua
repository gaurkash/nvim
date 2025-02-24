local M = {
  "numToStr/Comment.nvim",
}

M.config = function()
  local comment = require "Comment"

  local opts = {}

  comment.setup(opts)
end

return M
