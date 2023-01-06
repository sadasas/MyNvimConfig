local highlights = {
	fill = {
		fg = "#F0FF42",
	},
	background = {
		fg = "#808080",
	},
	numbers = {
		fg = "#808080",
	},
	tab = {
		fg = "#FFFFFF",
		bg = "#FFFFFF",
	},
	tab_selected = {
		fg = "#FFFFFF",
		bg = "#FFFFFF",
	},
	buffer_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	buffer_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	numbers_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	numbers_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	modified = {
		fg = "#F0FF42",
	},
	modified_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	modified_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	hint = {
		fg = "#808080",
	},
	hint_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	hint_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	hint_diagnostic = {
		fg = "#F18F01",
	},
	hint_diagnostic_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	hint_diagnostic_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	info = {
		fg = "#808080",
	},
	info_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	info_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	info_diagnostic = {
		fg = "#F18F01",
	},
	info_diagnostic_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	info_diagnostic_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	warning = {
		fg = "#808080",
	},
	warning_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	warning_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	warning_diagnostic = {
		fg = "#F18F01",
	},
	warning_diagnostic_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	warning_diagnostic_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	error = {
		fg = "#808080",
	},
	error_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	error_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	error_diagnostic = {
		fg = "#C73E1D",
	},
	error_diagnostic_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	error_diagnostic_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	diagnostic = {
		fg = "#F0FF42",
	},
	diagnostic_selected = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
	diagnostic_visible = {
		fg = "#000000",
		bg = "#F0FF42",
		bold = true,
		italic = true,
	},
}

require("bufferline").setup({
	highlights = highlights,
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = function()
					return ""
				end,
				highlight = "Directory",
				text_align = "left",
			},
		},
		show_buffer_icons = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		numbers = "ordinal",
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or (level:match("warning") and " " or " ")
			return " " .. icon .. count
		end,
	},
})
