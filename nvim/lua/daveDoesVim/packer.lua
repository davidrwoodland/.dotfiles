-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Telescope fuzzy finder 
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

-- Theme / Colorscheme 
  use({
	  "ellisonleao/gruvbox.nvim",
	  as = 'gruvbox',
	  config = function()
		  vim.cmd('colorscheme gruvbox')
	  end
  })

-- Lualine bottom-bar   
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

--ChatGPT
  use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })

-- Comment 
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

-- Vim / TMUX navigator
  use 'christoomey/vim-tmux-navigator'

-- Multi Line Editing 
  use'mg979/vim-visual-multi'

-- Icons  
  use 'nvim-tree/nvim-web-devicons'

-- Git signs
  use 'lewis6991/gitsigns.nvim'

-- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

-- Harpoon file swapper
  use('theprimeagen/harpoon')

-- Undotree to track changes
  use('mbbill/undotree')

-- Fugutive for Git
  use('tpope/vim-fugitive')

-- Surround containers
  use('tpope/vim-surround')
  use('rstacruz/vim-closer')

-- Game / Practice
  use('ThePrimeagen/vim-be-good')

-- Check for Conflicting Keybinds
  use ('folke/which-key.nvim')

-- LSP ZERO 
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

end)

