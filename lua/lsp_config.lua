--change signs icon
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local lsp_flags = {
	debounce_text_changes = 150,
}
--cpp
require("lspconfig").clangd.setup({
	flags = lsp_flags,
})
--lua
require("lspconfig").sumneko_lua.setup({
	flags = lsp_flags,
})
