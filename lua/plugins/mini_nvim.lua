return {
	"echasnovski/mini.nvim",
	config = function()
		local move = require("mini.move")
		move.setup({})

		local surround = require("mini.surround")
		surround.setup({})

		local starter = require("mini.starter")
		starter.setup({
			query_updaters = "abcdefghijklmnopqrstuvwxyz0123456789_.",
		})

		local sessions = require("mini.sessions")
		sessions.setup({
			autoread = false,

			autowrite = true,

			directory = ("%s%ssession"):format(vim.fn.stdpath("data"), "\\"),

			file = "Session.vim",
		})
	end,
}
