--auto format on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]])
--change signs icon
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require'lspconfig'.clangd.setup{
flags = lsp_flags,

}
