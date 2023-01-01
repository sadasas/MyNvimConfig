require("telescope").setup({
	extensions = {
		project = {
			hidden_files = true, -- default: false
			theme = "dropdown",
			sync_with_nvim_tree = true, -- default false		},
		},
	},
})

require("telescope").load_extension("project")
