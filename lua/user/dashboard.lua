local M = {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
}

M.config = function()
	local db = require("dashboard")
	local icons = require("user.icons")

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
				{
                    icon = icons.kind.Package,
					icon_hl = "@variable",
					desc = "Update",
					group = "Label",
					action = "Lazy update",
					key = "u",
				},
				{
					icon = icons.kind.Folder,
					icon_hl = "@variable",
					desc = "Files",
					group = "Label",
					action = "Telescope find_files",
					key = "f",
				},
				{
					icon = icons.kind.String,
					icon_hl = "@variable",
					group = "Label",
					desc = "Find text",
					action = "Telescope grep_string",
					key = "t",
				},
				{
					icon = icons.git.Branch,
					icon_hl = "@variable",
					group = "Label",
					desc = " Git",
					action = "Neogit",
					key = "g",
				},
			},
		},
	}

	db.setup(opts)
end

return M
