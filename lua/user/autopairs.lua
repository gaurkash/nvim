local M = {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
}

M.config = function()
  local autopairs = require "nvim-autopairs"

  local opts = {}

  autopairs.setup(opts)

  local cmp_autopairs = require('nvim-autopairs.completion.cmp')
  local cmp = require('cmp')
  cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
  )
end

return M
