require 'user.reiend.colorschemes'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- colorschemes
  {
    'sainnhe/everforest',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      setColorSchemeEverforest()
    end,
  },
  'Mofiqul/vscode.nvim',
  'nordtheme/vim',

  -- quality of life
  'nvim-lualine/lualine.nvim',
  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',

  -- highlighting
  'nvim-treesitter/nvim-treesitter',

  -- lsp
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- searching
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- code completion
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  -- For vsnip users.
  -- "hrsh7th/cmp-vsnip",
  -- "hrsh7th/vim-vsnip",

  -- For luasnip users.
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  -- For ultisnips users.
  -- "SirVer/ultisnips',
  -- "quangnguyen30192/cmp-nvim-ultisnips',

  -- For snippy users.
  -- "dcampos/nvim-snippy",
  -- "dcampos/cmp-snippy"

  -- Git
  'tpope/vim-fugitive',

  'mhartington/formatter.nvim',
  'mfussenegger/nvim-lint',
  {
    'creativenull/efmls-configs-nvim',
    tag = 'v0.1.3',
    dependencies = { 'neovim/nvim-lspconfig' },
  },
  "andweeb/presence.nvim"
}

