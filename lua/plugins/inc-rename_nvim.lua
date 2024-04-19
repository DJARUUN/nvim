return {
	{
		"smjonas/inc-rename.nvim",
		config = function()
			---@diagnostic disable: missing-fields
			require("inc_rename").setup({
				input_buffer_type = "dressing",
			})
		end,
	},
}
