local opts = { noremap = true, silent = true }
local bufopts = { noremap = true, silent = true, buffer = bufnr }
local keymap = vim.keymap.set
vim.g.mapleader = ","

--save
keymap("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
--copy to clipboard
keymap({ "n", "x" }, "cp", '"+y')
--paste from clipboard
keymap({ "n", "x" }, "cv", '"+p')
--delete without changing register
keymap({ "n", "x" }, "x", '"_x')
--select all text current buffer
keymap("n", "<leader>a", ":keepjumps normal! ggVG<cr>")

--nvimtree
keymap("n", "<C-h>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<C-f>", ":NvimTreeFocus<cr>", opts)

--bufferline
keymap("n", "<leader>j", ":bnext<cr>")
keymap("n", "<leader>l", ":bprev<cr>")
keymap("n", "<leader>d", ":bdelete<cr>")
keymap("n", "<leader>da", ':%bdelete|edit #|normal`"<cr>')

--LSPSAGA
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
keymap("n", "[E", function()
	require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
	require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
-- Outline
keymap("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true })
-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
-- Float terminal
keymap("n", "<f-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
-- open lazygit in lspsaga float terminal
-- keymap("n", "<f-d>", "<cmd>Lspsaga open_floaterm lazygit<CR>", { silent = true })
-- close floaterm
keymap("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })

--Telescope
local builtin = require("telescope.builtin")
keymap("n", "<leader>ff", builtin.find_files, {})
keymap("n", "<leader>fg", builtin.live_grep, {})
keymap("n", "<leader>fb", builtin.buffers, {})
keymap("n", "<leader>fh", builtin.help_tags, {})
--extensions
--telescope-project
keymap("n", "<leader>fp", ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>", {})
--telescope-vim-bookmarks
keymap("n", "<leader>fba", ":lua require('telescope').extensions.vim_bookmarks.all()<CR>", {})

--zenmode
keymap("n", "<leader>z", ":lua require('zen-mode').toggle()<CR>", opts)
