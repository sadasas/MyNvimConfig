require("mason-lspconfig").setup({
	ensure_installed = { "omnisharp", "clangd", "sumneko_lua" },
	automatic_installation = true,
})
