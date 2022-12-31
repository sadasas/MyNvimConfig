local lib = require("nvim-tree.lib")
local view = require("nvim-tree.view")
local nvimtree = require("nvim-tree")

--change root / cwd to acive buffer
 local function change_root_to_global_cwd()
    local api = require("nvim-tree.api")
    local global_cwd = vim.fn.expand('%:p:h')
    api.tree.change_root(global_cwd)
		api.tree.reload()
  end

--git add
local git_add = function()
  local node = lib.get_node_at_cursor()
  local gs = node.git_status

  -- If the file is untracked, unstaged or partially staged, we stage it
  if gs == "??" or gs == "MM" or gs == "AM" or gs == " M" then
    vim.cmd("silent !git add " .. node.absolute_path)

  -- If the file is staged, we unstage
  elseif gs == "M " or gs == "A " then
    vim.cmd("silent !git restore --staged " .. node.absolute_path)
  end

  lib.refresh_tree()
end


local config = {
--	sync_root_with_cwd = true,
--	respect_buf_cwd = true,
--	update_focused_file={
	--	enable = true,
		--update_root = true;},
	reload_on_bufenter = true,
	renderer={
 		indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
		},
	view = {
        mappings = {
            custom_only = false,
            list = {
								{ key = "ga", action = "git_add", action_cb = git_add },
								{ key = "cd", action = "global_cwd", action_cb = change_root_to_global_cwd },
            }
        },
    },
    actions = {
		  use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = true,
          restrict_above_cwd = false,
        },
				remove_file={
					close_window = true
				},
        open_file = {
            quit_on_open = false
        }
    },
  	filters = {
    	dotfiles = true,
  	},
  	diagnostics = {
    	enable = true,
      show_on_dirs = true,
		  show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
		},
}


require("nvim-tree").setup(config)
