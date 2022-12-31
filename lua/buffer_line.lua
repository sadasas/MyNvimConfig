
require("bufferline").setup{
 highlights = {
	  fill = {
      fg = '#F0FF42',
    },
    background = {
      fg = '#808080',
    },
		 numbers = {
      fg = '#808080',
    },
	  tab = {
			fg = '#FFFFFF',
			bg = '#FFFFFF',
            },
		tab_selected = {
			fg = '#FFFFFF',
			bg = '#FFFFFF',
		},
	  buffer_selected = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
    },
	  buffer_visible = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
    },
	 numbers_selected = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 numbers_visible = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 modified = {
      fg = '#F0FF42',
   },
	 modified_selected = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 modified_visible = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 warning = {
      fg = '#808080',
   },
	 warning_selected = {
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 warning_visible = {
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 warning_diagnostic = {
      fg = '#F18F01',
   },
	 warning_diagnostic_selected = {
      bg = '#000000',
      bold = true,
     italic = true,
   },
	 warning_diagnostic_visible = {
      bg = '#000000',
      bold = true,
     italic = true,
   },
	 error = {
      fg = '#808080',
   },
	 error_selected = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 error_visible = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 error_diagnostic = {
      fg = '#C73E1D',
   },
	 error_diagnostic_selected = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 error_diagnostic_visible = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 diagnostic = {
      fg = '#F0FF42',
   },
	 diagnostic_selected = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	 diagnostic_visible = {
      fg = '#000000',
      bg = '#F0FF42',
      bold = true,
     italic = true,
   },
	},
	options = {
		  offsets = {
    {
      filetype = "NvimTree",
      text = function()
        return ''
      end,
      highlight = "Directory",
      text_align = "left"
    }
  },
		show_buffer_icons = false,
		show_buffer_close_icons = false,
	  show_close_icon = false,
  	numbers = "ordinal",
		diagnostics =  "nvim_lsp", 
		diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or ""
      return " " .. icon .. count
    end,
	},
}

