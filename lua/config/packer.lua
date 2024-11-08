-- This file can be loaded by calling `lua require('plugins')` from your init.vim 

-- Only required if you have packer configured as `opt` 

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself   
	use {'wbthomason/packer.nvim'}

	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag='0.1.5',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	-- Color scheme
	use { 'maxmx03/solarized.nvim', as = 'solarized' }
	-- NVIM Live Update Syntax Tree
	use { 'nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"}, }
  use { 'ThePrimeagen/harpoon', requires = {{'nvim-lua/plenary.nvim'}} }
  -- use('nvim-treesitter/playground') -- view tree
  -- LSP Zero (LSP support)
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment the two plugins below if you want to manage 
      -- the language servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },
  }
  -- Trouble: problems pane
  use {
   "folke/trouble.nvim",
   requires = { "nvim-tree/nvim-web-devicons" }, -- this is only for icons
  }
  use({ -- vim surround motion
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function() require("nvim-surround").setup() end
  })
  use {'m4xshen/autoclose.nvim'} -- brackets autopair closing
  use {'airblade/vim-gitgutter'} -- +/-/~ in git repos on changed lines
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  } -- customize the status line

  use {'smartinellimarco/nvcheatsheet.nvim'} -- nvchad cheatsheet plugin
end)
