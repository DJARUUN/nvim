local M = {}

require("mason").setup()
require("mason-lspconfig").setup({})

local lspconfig = require("lspconfig")
local root_pattern = lspconfig.util.root_pattern

function M.run()
	lspconfig.gopls.setup({
		cmd = { "gopls" },
		filetypes = { "go", "gomod", "gowork", "gotmpl" },
		root_dir = root_pattern("go.work", "go.mod", ".git"),
		single_file_support = true,
	})

	lspconfig.zls.setup({})

	lspconfig.ols.setup({})

	lspconfig.intelephense.setup({
		root_dir = root_pattern(".git"),
	})

	lspconfig.gleam.setup({})

	lspconfig.tsserver.setup({})
end

return M
