vim.opt.list = true
require("indent_blankline").setup {
	char_highlight_list = {
        "IndentBlanklineIndent",
    },
    space_char_blankline = " ",
	 show_trailing_blankline_indent = false,
    show_current_context = true,
}
