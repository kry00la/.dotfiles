-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
local function get_config(name)
	return string.format('require("config/%s")', name)
end

return require("packer").startup(function()
	use("wbthomason/packer.nvim")

  use("szw/vim-maximizer") 

  use("christoomey/vim-tmux-navigator")

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
		config = get_config("telescope"),
	})

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

	-- use({ "Pocco81/AutoSave.nvim", config = get_config("autosave") })
	use({
		"lewis6991/gitsigns.nvim",
		config = get_config("gitsigns"),
		tag = "release",
	})

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

  ---------- UI -------------
  
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = get_config("lualine")
  }

  use("bluz71/vim-nightfly-guicolors")

	use({ "kyazdani42/nvim-web-devicons" })

  use("chriskempson/base16-vim") 

  ---------- UI -------------
	
  if packer_bootstrap then
		require("packer").sync()
	end
end)
