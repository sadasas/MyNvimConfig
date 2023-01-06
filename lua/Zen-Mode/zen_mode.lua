require("zen-mode").setup({
	window = {
		backdrop = 0.95,
		width = 0.85,
		height = 1,
		options = {
			-- signcolumn = "no", -- disable signcolumn
			-- number = false, -- disable number column
			-- relativenumber = false, -- disable relative numbers
			-- cursorline = false, -- disable cursorline
			-- cursorcolumn = false, -- disable cursor column
			-- foldcolumn = "0", -- disable fold column
			-- list = false, -- disable whitespace characters
		},
	},
	plugins = {
		options = {
			enabled = true,
			ruler = false,
			showcmd = false,
		},
		twilight = { enabled = false },
		gitsigns = { enabled = false },
		tmux = { enabled = false }, -- disables the tmux statusline
		-- this will change the font size on kitty when in zen mode
		-- to make this work, you need to set the following kitty options:
		-- - allow_remote_control socket-only
		-- - listen_on unix:/tmp/kitty
	},
	on_open = function(win) end,
	on_close = function() end,
})
