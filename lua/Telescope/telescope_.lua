require("telescope").setup({
	extensions = {
		project = {
			hidden_files = true, -- default: false
			theme = "dropdown",
			sync_with_nvim_tree = true, -- default false		},
		},
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
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
require("telescope").load_extension("fzf")
require("telescope").load_extension("project")
