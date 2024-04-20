local M = {}

function M.run()
	-- general
	vim.api.nvim_create_autocmd("TextYankPost", {
		desc = "Highlight when yanking (copying) text",
		group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
		callback = function()
			vim.highlight.on_yank()
		end,
	})

	-- color scheme
	vim.api.nvim_create_autocmd("VimEnter", { command = "colorscheme calvera" })
	vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, { command = "lua Fix_syntax_hl()" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! link @variable @lsp.type.property" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! link Normal @property" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! link NormalNC @property" })

	-- statusline
	vim.api.nvim_create_autocmd("User", { command = "highlight! link StatusLineTerm StatusLineTermNC" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! link StatusLineTermNC StatusLineTermNC" })

	-- defaults ** use these for other things **
	vim.api.nvim_create_autocmd("User", { command = "highlight! NonText guifg=#0c0c1f" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! link NormalFloat TelescopeResultsBorder" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! link FloatBorder TelescopePromptBorder" })

	-- lspreference
	vim.api.nvim_create_autocmd("User", { command = "highlight! LspReferenceRead guibg=NONE guifg=NONE gui=underline" })
	vim.api.nvim_create_autocmd(
		"User",
		{ command = "highlight! LspReferenceWrite guibg=NONE guifg=NONE gui=underline" }
	)
	vim.api.nvim_create_autocmd("User", { command = "highlight! LspReferenceText guibg=NONE guifg=NONE gui=underline" })

	-- lazygit
	vim.api.nvim_create_autocmd("User", { command = "highlight! link LazyGitBorder NormalFloat" })

	-- cursor line
	vim.api.nvim_create_autocmd("User", { command = "highlight! link CursorLine SneakScope" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! link CursorColumn SneakScope" })

	-- indentblankline
	vim.api.nvim_create_autocmd("User", { command = "highlight! link @ibl.whitespace.char.1 LineNr" })
	vim.api.nvim_create_autocmd("User", { command = "highlight! @ibl.indent.char.1 guifg=#121230" })

	-- gitsigns
	vim.api.nvim_create_autocmd("User", { command = "highlight! link GitSignsCurrentLineBlame Comment" })
end

return M
