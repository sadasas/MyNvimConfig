require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },

}

--extensions
require('telescope').load_extension('vim_bookmarks')
