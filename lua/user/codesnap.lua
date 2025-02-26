local M = {
	"mistricky/codesnap.nvim",
	build = "make",
  keys = {
    { "<leader>ss", "<cmd>CodeSnap<cr>", desc = "Code Snapshot"}
  }
}

M.config = function()
	local snap = require("codesnap")

	local opts = {
		watermark = "",
		bg_x_padding = 50,
		bg_y_padding = 30,
		bg_padding = nil,
	}

	snap.setup(opts)
end

return M
