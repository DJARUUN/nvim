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

	-- lspconfig.intelephense.setup({
	-- 	root_dir = root_pattern(".git"),
	-- })
	lspconfig.phpactor.setup({
		on_attach = function(client)
			vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)]])
		end,
	})

	lspconfig.gleam.setup({})

	lspconfig.tsserver.setup({})

	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	lspconfig.html.setup({
		capabilities = capabilities,
		filetypes = { "html", "templ", "blade", "php" },
	})
end

return M
