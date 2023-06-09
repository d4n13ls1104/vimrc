vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  } 

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')

  -- Git Integration
  use('tpope/vim-fugitive')

  -- Autoclosing container symbols
  use 'm4xshen/autoclose.nvim'

  -- Comment sections of text quickly
  use 'terrortylor/nvim-comment'

  -- Colorscheme
  use ({'rebelot/kanagawa.nvim', as = "kanagawa"})

  -- Statusline
  use {
	  "nvim-lualine/lualine.nvim",
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- LSP
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
end)
