--change signs icon
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local lsp_flags = {
	debounce_text_changes = 150,
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()
--fix issue clangd offset encoding
capabilities.offsetEncoding = { "utf-16" }

require("lspconfig").clangd.setup({
	lsp_flags = lsp_flags,
	capabilities = capabilities,
})

require("lspconfig").sumneko_lua.setup({
	lsp_flags = lsp_flags,
	capabilities = capabilities,
})

--CSharp
require("lspconfig").omnisharp.setup({
	enable_roslyn_analyzers = true,
	capabilities = capabilities,
})

-- CSharp mono
-- require("lspconfig").omnisharp_mono.setup({
-- 	capabilities = capabilities,
-- })
