return {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "spec" },
			},
			runtime = {
				special = {
					spec = "require",
				},
			},
		},
	},
}
