local M = {
  "aserowy/tmux.nvim",
}

function M.config()
  local tmux = require "tmux"

  local opts = {
    copy_sync = {
      enable = false,
    },
    resize = {
      enable_default_keybindings = false,
    },
  }

  tmux.setup(opts)
end

return M
