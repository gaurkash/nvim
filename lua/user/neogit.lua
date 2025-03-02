local M = {
	"neogitorg/neogit",
	event = "VeryLazy",
}

M.config = function()
	local neo = require("neogit")
	local wk = require("which-key")

	local opts = {
		integrations = {
			telescope = true,
			diffview = true,
		},
		-- Change the default way of opening neogit
		kind = "tab",
		-- Change the default way of opening the commit popup
		commit_popup = {
			kind = "auto",
		},
		-- Change the default way of opening popups
		popup = {
			kind = "auto",
		},
	}

	neo.setup(opts)

	local mappings = {
		{ "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
	}

	wk.add(mappings)
end

return M
