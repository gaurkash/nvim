vim.api.nvim_create_autocmd({ "CursorHold" }, {
	callback = function()
		local status_ok, luasnip = pcall(require, "luasnip")
		if not status_ok then
			return
		end
		if luasnip.expand_or_jumpable() then
			-- ask maintainer for option to make this silent
			-- luasnip.unlink_current()
			vim.cmd([[silent! lua require("luasnip").unlink_current()]])
		end
	end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = "NvimTree_*",
	callback = function()
		vim.opt.titlestring = "File Explorer"
		-- vim.cmd("redrawtabline")
	end,
})
