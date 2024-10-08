-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "blazkowolf/gruber-darker.nvim"

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'stevearc/dressing.nvim'

  use {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'ntpeters/vim-better-whitespace'
  use 'mbbill/undotree'

  use {
    'nmac427/guess-indent.nvim',
    config = function() require('guess-indent').setup {
      filetype_exclude = { "go" },
    } end,
  }
end)
