-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
local function get_config(name)
	return string.format('require("config/%s")', name)
end

return require("packer").startup(function()
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
		config = get_config("telescope"),
	})

	use({ "kyazdani42/nvim-web-devicons" })

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-vsnip" },
			{ "hrsh7th/vim-vsnip" },
		},
		config = get_config("cmp"),
	})

	use({
		"scalameta/nvim-metals",
		requires = {
			"nvim-lua/plenary.nvim",
			"mfussenegger/nvim-dap",
		},
	})

	use({ "Pocco81/AutoSave.nvim", config = get_config("autosave") })
	use({
		"lewis6991/gitsigns.nvim",
		config = get_config("gitsigns"),
		tag = "release",
	})

	use({ "feline-nvim/feline.nvim", config = get_config("feline") })

  use ({
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  config = get_config("nvim-tree")
})

use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = get_config("startup-nvim")
}

  use({ "tpope/vim-fugitive" })
use({'kdheepak/lazygit.nvim'})
end)
