require("telescope").setup({
	defaults = {
		-- ...
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			hidden_files = true, -- default: false
		},
	},
})

--extensions
require("telescope").load_extension("vim_bookmarks")
