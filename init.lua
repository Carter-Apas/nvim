local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  },
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {'Shatur/neovim-ayu'},
  {'tpope/vim-fugitive'},
  {'airblade/vim-gitgutter'},
  {'lukas-reineke/indent-blankline.nvim'},
  {"windwp/nvim-autopairs"},
  {'mrjones2014/smart-splits.nvim'},
  {'ggandor/leap.nvim'},
  {'f-person/git-blame.nvim'},
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  }
}

require("lazy").setup(plugins)

require("carter")
