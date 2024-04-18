local M = {}

function M.run()
	-- general
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "colorscheme poimandres",
	})
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight NonText guifg=#1b1e28",
	})
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight NormalFloat guibg=#1b1e28",
	})
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight FloatBorder guifg=#303340",
	})

	-- whichkey
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight WhichKeyFloat guibg=#1b1e28",
	})
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight WhichKeySeparator guifg=#a6accd",
	})
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight WhichKeyDesc guifg=#add7ff",
	})
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight WhichKeyGroup guifg=#91b4d5",
	})
	vim.api.nvim_create_autocmd({ "VimEnter" }, {
		command = "highlight WhichKeyBorder guifg=#303340",
	})
end

return M
