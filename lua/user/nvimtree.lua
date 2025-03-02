local M = {
	"nvim-tree/nvim-tree.lua",
}

M.config = function()
	local tree = require("nvim-tree")
	local wk = require("which-key")
	local icons = require("user.icons")

	local opts = {
		respect_buf_cwd = true,
		sync_root_with_cwd = true,
		update_focused_file = {
			enable = true,
			update_root = {
				enable = true,
				ignore_list = {},
			},
			exclude = false,
		},
		renderer = {
			add_trailing = false,
			group_empty = false,
			highlight_git = false,
			full_name = false,
			highlight_opened_files = "none",
			root_folder_label = ":t",
			indent_width = 2,
			indent_markers = {
				enable = false,
				inline_arrows = true,
				icons = {
					corner = "└",
					edge = "│",
					item = "│",
					none = " ",
				},
			},
			icons = {
				git_placement = "before",
				padding = " ",
				symlink_arrow = " ➛ ",
				glyphs = {
					default = icons.ui.Text,
					symlink = icons.ui.FileSymlink,
					bookmark = icons.ui.BookMark,
					folder = {
						arrow_closed = icons.ui.ChevronRight,
						arrow_open = icons.ui.ChevronShortDown,
						default = icons.ui.Folder,
						open = icons.ui.FolderOpen,
						empty = icons.ui.EmptyFolder,
						empty_open = icons.ui.EmptyFolderOpen,
						symlink = icons.ui.FolderSymlink,
						symlink_open = icons.ui.FolderOpen,
					},
					git = {
						unstaged = icons.git.FileUnstaged,
						staged = icons.git.FileStaged,
						unmerged = icons.git.FileUnmerged,
						renamed = icons.git.FileRenamed,
						untracked = icons.git.FileUntracked,
						deleted = icons.git.FileDeleted,
						ignored = icons.git.FileIgnored,
					},
				},
			},
			special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
			symlink_destination = true,
		},
	}

	tree.setup(opts)

	local mappings = {
		{ "<leader>e", ":NvimTreeToggle<CR>", desc = "Explorer" },
	}

	wk.add(mappings)
end

return M
