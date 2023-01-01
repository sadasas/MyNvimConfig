vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.encoding = "UTF-8"
vim.opt.wildmenu = true
vim.opt.mouse = ""
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.clipboard = "unnamedplus"
vim.opt.linebreak = true
vim.opt.termguicolors = true
vim.opt.wildmode = longest, list, full
vim.cmd("syntax enable")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--appereance
--vim-airline
vim.g.airline_theme = "transparent"

--higlight
vim.cmd("hi EndOfBuffer ctermfg=Black guifg=#121212")
vim.cmd("hi VertSplit guifg=#F0FF42 guibg=#121212")
vim.cmd("hi LineNr guifg=Grey40")
vim.cmd("hi CursorLineNr guifg=#F0FF42")
vim.cmd("hi Pmenu guibg=#000000,guifg=#FFFFFF")
vim.cmd("hi clear SignColumn ")

--nvimtree
--higlight
vim.cmd("hi NvimTreeFolderIcon guifg=#F0FF42 ")
vim.cmd("hi NvimTreeFolderName guifg=#FFFFFF ")
vim.cmd("hi NvimTreeBookmark guifg=#F0FF42 ")
vim.cmd("hi NvimTreeIndentMarker guifg=#F0FF42 ")
vim.cmd("hi NvimTreeEndOfBuffer guifg=#000000 ")
vim.cmd("hi NvimTreeGitDirty  guifg=#F0FF42")
vim.cmd("hi NvimTreeGitDeleted  guifg=#EB455F")
vim.cmd("hi NvimTreeGitStaged  guifg=#ADA2FF")
vim.cmd("hi NvimTreeGitNew  guifg=#A3BB98")
vim.cmd("hi NvimTreeOpenedFolderName guifg=#F0FF42 ")
vim.cmd("hi NvimTreeCursorLine guifg=#000000 guibg=#F0FF42 ")

--treesitter context
--higlight
vim.cmd("hi TreesitterContext guibg=#000000 guifg=#F0FF42 ")
vim.cmd("hi TreesitterContextBottom  gui=underline guibg=#181818 ")

--cmp
--higlight
vim.cmd("highlight! CmpPmenuBorder guibg=NONE guifg=#F0FF42")
vim.cmd("highlight! PmenuSel guibg=#F0FF42 guifg=#000000")
vim.cmd("highlight! CmpPmenu guibg=NONE  guifg=#EEEEEE")
vim.cmd("highlight! CmpItemAbbrMatch guibg=NONE guifg=#F0FF42")
vim.cmd("highlight! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch")
vim.cmd("highlight! CmpItemKindVariable guibg=NONE guifg=#F0FF42")
vim.cmd("highlight! link CmpItemKindInterface CmpItemKindVariable")
vim.cmd("highlight! link CmpItemKindText CmpItemKindVariable")
vim.cmd("highlight! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch")
vim.cmd("highlight! CmpItemKindFunction guibg=NONE guifg=#ffffff")
vim.cmd("highlight! link CmpItemKindMethod CmpItemKindFunction")
vim.cmd("highlight! CmpItemKindKeyword guibg=NONE guifg=#F0FF42")
vim.cmd("highlight! link CmpItemKindProperty CmpItemKindKeyword")
vim.cmd("highlight!  link CmpItemKindUnit CmpItemKindKeyword")
vim.cmd("highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=Grey40")

--lspsaga
--higlight
vim.cmd("highlight! LspSagaLspFinderBorder guifg=#F0FF42")
vim.cmd("highlight! LspSagaAutoPreview guifg=#F0FF42")
vim.cmd("highlight! DefinitionBorder guifg=#F0FF42")
vim.cmd("highlight! LspSagaHoverBorder guifg=#F0FF42")
vim.cmd("highlight! LSOutlinePreviewBorder guifg=#F0FF42")
vim.cmd("highlight! LspSagaRenameBorder guifg=#F0FF42")
vim.cmd("highlight! LspSagaDiagnosticBorder guifg=#F0FF42")

--Telescope
--highlight
vim.cmd("highlight TelescopeResultsBorder guibg=NONE guifg=#F0FF42")
vim.cmd("highlight TelescopePreviewBorder guibg=NONE guifg=#F0FF42")
vim.cmd("highlight TelescopePromptBorder guibg=NONE guifg=#F0FF42")
vim.cmd("highlight TelescopePromptCounter guibg=NONE guifg=#F0FF42")
vim.cmd("highlight TelescopeNormal  guifg=#FFFFFF")
vim.cmd("highlight TelescopeSelection guibg=#F0FF42 guifg=#000000")

--vimBookmark
--option
vim.g.bookmark_save_per_working_dir = 1
vim.g.bookmark_auto_close = 1
vim.g.bookmark_auto_save = 0

--indent blankline
vim.cmd([[highlight IndentBlanklineIndent guifg=#121212 
]])

--UltiSnips
