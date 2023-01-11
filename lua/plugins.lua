return require('packer').startup(function(use)
  -- plugin manager in lua
  use 'wbthomason/packer.nvim'
  -- autopairs
  use 'jiangmiao/auto-pairs'
  -- treesitter for comments and lsp
  use 'nvim-treesitter/nvim-treesitter'
  -- comments settings
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'lukas-reineke/indent-blankline.nvim'
  -- telescope settings
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  -- colorschemes
  use 'navarasu/onedark.nvim'
  -- discord presence
  use 'andweeb/presence.nvim'
  -- lsp config
  use 'nvim-lua/completion-nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-cmdline' -- cmdline completion
  use 'hrsh7th/cmp-path' -- path completion
  use 'hrsh7th/cmp-buffer' -- buffer completion
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'jose-elias-alvarez/null-ls.nvim' -- null-ls
  use 'MunifTanjim/prettier.nvim' -- prettier
  -- surround bracket etc
  use "ur4ltz/surround.nvim"
  -- devicons
  use 'kyazdani42/nvim-web-devicons'
  -- lazygit
  use 'kdheepak/lazygit.nvim'
  -- nvim tree
  use 'nvim-tree/nvim-tree.lua'
  -- Gitsigns
  use 'lewis6991/gitsigns.nvim'
  -- Zen Mode
  use 'folke/zen-mode.nvim'
  -- lua line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'kdheepak/tabline.nvim',
    requires = { { 'hoob3rt/lualine.nvim', opt = true }, {'kyazdani42/nvim-web-devicons', opt = true} }
  }
  use({
    'folke/noice.nvim',
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
      }
  })
  -- use 'zbirenbaum/copilot.lua'
end)
