local use = require('packer').use
return require('packer').startup(function()

  -- plugin manager in lua
  use 'wbthomason/packer.nvim'

  -- autopairs
  use 'jiangmiao/auto-pairs'

  use {'nvim-treesitter/nvim-treesitter',
    require'nvim-treesitter.configs'.setup {

      ensure_installed = "all",
      ignore_install = { "phpdoc" },
      context_commentstring = {
        enable = true
      },
      highlight = {
        enable = true,
        disable = { "lua" }
      },
      indent = {
        enable = true
      }
     }
   }

  use 'tpope/vim-commentary'

  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorschemes
  use 'rafi/awesome-vim-colorschemes'

  -- discord presence
  use 'andweeb/presence.nvim'

  -- lsp config
  use 'nvim-lua/completion-nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- file browser
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- surround bracket etc
  use {
    "ur4ltz/surround.nvim",
    config = function()
      -- require"surround".setup {mappings_style = "surround"}
    require"surround".setup {
      context_offset = 100,
      load_autogroups = false,
      mappings_style = "sandwich",
      map_insert_mode = true,
      quotes = {"'", '"'},
      brackets = {"(", '{', '['},
      space_on_closing_char = false,
      pairs = {
        nestable = { b = { "(", ")" }, s = { "[", "]" }, B = { "{", "}" }, a = { "<", ">" } },
        linear = { q = { "'", "'" }, t = { "`", "`" }, d = { '"', '"' } }
      },
      prefix = "s"
    }
    end
  }

  -- use {"github/copilot.vim"}

end)

