return {
	"echasnovski/mini.nvim",
	config = function()
		-- local statusline = require("mini.statusline")
		-- statusline.setup({ use_icons = vim.g.have_nerd_font })
		-- statusline.section_location = function()
		-- 	return "%2l:%-2v%f"
		-- end

		local move = require("mini.move")
		move.setup({})

		local surround = require("mini.surround")
		surround.setup({})
	end,
}
