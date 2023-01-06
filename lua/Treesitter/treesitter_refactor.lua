require("nvim-treesitter.configs").setup({
	refactor = {
		refactor = {
			smart_rename = {
				enable = true,
				keymaps = {
					smart_rename = "grr",
				},
			},
		},
		highlight_definitions = {
			enable = true,
			clear_on_cursor_move = true,
		},
	},
})
