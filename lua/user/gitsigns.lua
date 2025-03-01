local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
}

M.config = function()
  local gs = require("gitsigns")
  local wk = require("which-key")

  local opts = {
    attach_to_untracked = true,
  }

  gs.setup(opts)

  local mappings = {
    {
      "<leader>gj",
      "<cmd>lua gs.next_hunk({navigation_message = false})<cr>",
      desc = "Next Hunk",
    },
    {
      "<leader>gk",
      "<cmd>lua gs.prev_hunk({navigation_message = false})<cr>",
      desc = "Prev Hunk",
    },
    {
      "<leader>gp",
      "<cmd>lua gs.preview_hunk()<cr>",
      desc = "Preview Hunk",
    },
    {
      "<leader>gr",
      "<cmd>lua gs.reset_hunk()<cr>",
      desc = "Reset Hunk",
    },
    {
      "<leader>gl",
      "<cmd>lua gs.blame_line()<cr>",
      desc = "Blame",
    },
    {
      "<leader>gR",
      "<cmd>lua gs.reset_buffer()<cr>",
      desc = "Reset Buffer",
    },
    {
      "<leader>gs",
      "<cmd>lua gs.stage_hunk()<cr>",
      desc = "Stage Hunk",
    },
    {
      "<leader>gu",
      "<cmd>lua gs.undo_stage_hunk()<cr>",
      desc = "Undo Stage Hunk",
    },
    {
      "<leader>gd",
      "<cmd>Gitsigns diffthis HEAD<cr>",
      desc = "Git Diff",
    },
  }

  wk.add(mappings)
end

return M
