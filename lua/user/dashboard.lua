local M = {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
}

M.config = function()
	local db = require("dashboard")

	local opts = {
		theme = "hyper",
		config = {
			week_header = {
				enable = true,
			},
			project = {
				enable = false,
			},
			mru = {
				cwd_only = true,
			},
			shortcut = {
				{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
				{
					icon = " ",
					icon_hl = "@variable",
					desc = "Files",
					group = "Label",
					action = "Telescope find_files",
					key = "f",
				},
				{
					desc = "Find text",
					group = "DiagnosticHint",
					action = "Telescope grep_string",
					key = "a",
				},
				{
					desc = "Git",
					group = "Number",
					action = "Neogit",
					key = "d",
				},
			},
		},
	}

	db.setup(opts)
end

return M
