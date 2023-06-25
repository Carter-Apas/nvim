-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('Shatur/neovim-ayu')
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
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use "lukas-reineke/indent-blankline.nvim"
  use {
          "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use "windwp/nvim-ts-autotag"
  use "tpope/vim-surround"
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use('mrjones2014/smart-splits.nvim')
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')
  use('f-person/git-blame.nvim')
  use('ggandor/leap.nvim')
end)
