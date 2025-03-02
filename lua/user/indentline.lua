local M = {
	"lukas-reineke/indent-blankline.nvim",
}

M.config = function()
	local lbl = require("ibl")
	local icons = require("user.icons")

	local opts = {
		indent = {
			char = icons.ui.LineLeft,
		},
		scope = {
			enabled = true,
			show_start = true,
			show_end = false,
			injected_languages = true,
			show_exact_scope = false,
			include = {
				node_type = {
					["rust"] = { "let_declaration", "const_declaration" },
				},
			},
		},
	}

	lbl.setup(opts)
end

return M
