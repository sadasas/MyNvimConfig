require("mason-null-ls").setup({
	automatic_installation = true,
	ensure_installed = { "stylua", "csharpier", "eslint", "spell" },
	automatic_setup = true,
})
