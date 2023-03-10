return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	--LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("lukas-reineke/cmp-rg")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})
	use("SirVer/ultisnips")
	use("honza/vim-snippets")
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	--debuggers
	use("mfussenegger/nvim-dap")
	--Visual
	use("vim-airline/vim-airline")
	use("vim-airline/vim-airline-themes")
	use("nvim-treesitter/nvim-treesitter")
	--Tool
	use({ "akinsho/bufferline.nvim", tag = "v3.*" })
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("nvim-treesitter/playground")
	use("nvim-treesitter/nvim-treesitter-context")
	use("andymass/vim-matchup")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("MattesGroeger/vim-bookmarks")
	use("tom-anders/telescope-vim-bookmarks.nvim")
	use("nvim-telescope/telescope-project.nvim")
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("folke/zen-mode.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("numToStr/Comment.nvim")
end)
