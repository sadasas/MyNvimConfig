return require('packer').startup(function(use)
		--LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'lukas-reineke/cmp-rg'
	use({
    "glepnir/lspsaga.nvim",
    branch = "main",
	})

	--Visual
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
	use 'nvim-treesitter/nvim-treesitter'
	--Tool
	use {'akinsho/bufferline.nvim',  tag= 'v3.*' }
	use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'nvim-treesitter/playground'
	use 'nvim-treesitter/nvim-treesitter-context'
	use  "folke/twilight.nvim"
	use 'andymass/vim-matchup'
	use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  	    requires = { {'nvim-lua/plenary.nvim'} },
				config = function()
						require("telescope_")
				end,
        }
	use 'MattesGroeger/vim-bookmarks'
	use 'tom-anders/telescope-vim-bookmarks.nvim'
--	use 'nvim-telescope/telescope-file-browser.nvim' 
	use({
		"nvim-telescope/telescope-project.nvim",
		after = "telescope.nvim",
		config = function()
			require("telescope_project")
		end,
		requires = { "nvim-telescope/telescope.nvim" },

	})
	use {
	   "windwp/nvim-autopairs",
           config = function() require("nvim-autopairs").setup {} end
      }
	use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}


end)