local packer = require "user.plugins.packerInit"
local use = packer.use

return packer.startup(function()
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use {"nvim-telescope/telescope.nvim",requires = { "nvim-lua/plenary.nvim" },config = require "user.plugins.configs.telescope",} -- fuzy finder
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = require "user.plugins.configs.treesitter"} --syntax highlightin
  use {"windwp/nvim-autopairs", config = require "user.plugins.configs.autopairs"} --autopairs
  use {'numToStr/Comment.nvim',config = require "user.plugins.configs.comment"} --faster commenting
  use {"kyazdani42/nvim-tree.lua", config = require "user.plugins.configs.nvim-tree"} --file explorere
  use {"lukas-reineke/indent-blankline.nvim", config = "user.plugins.configs.indent-blankline"} -- pretty indents
  use "kyazdani42/nvim-web-devicons"
  use {"akinsho/bufferline.nvim", config = "user.plugins.configs.bufferline"}
  --Themes
  use "rmehri01/onenord.nvim" -- A nord theme
  use "shaunsingh/nord.nvim"  -- another nord theme  
  --CMP Plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
 --LSP Plugins
  use "neovim/nvim-lspconfig" -- enable LSP
  use { "williamboman/nvim-lsp-installer" }

  --git
  use {'lewis6991/gitsigns.nvim',requires = {'nvim-lua/plenary.nvim'}, config = require"user.plugins.configs.gitsigns"}
end)
