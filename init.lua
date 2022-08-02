require('basics')
require('colors')
require('telescope-config')
require('coc-config')
require('discord-presence')

require'autosave'.setup
{
    enabled = true,
    execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
    events = {"InsertLeave", "TextChanged"},
    conditions = {
        exists = true,
        filename_is_not = {},
        filetype_is_not = {},
        modifiable = true
    },
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 135
}

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

return require('packer').startup(function()
  -- plugin manager in lua
  use 'wbthomason/packer.nvim'

  -- jump through files
  use 'micmine/jumpwire.nvim'

  -- themes
  -- use 'folke/tokyonight.nvim'
  -- use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'ryanoasis/vim-devicons'}
  use 'ajmwagar/vim-deus'

  -- use {'kyazdani42/nvim-web-devicons'}
  use {'ryanoasis/vim-devicons'}
  -- autopairs
  use 'jiangmiao/auto-pairs'


  use 'nvim-treesitter/nvim-treesitter'
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'andweeb/presence.nvim'

  -- lsp
  use {'neoclide/coc.nvim', branch = 'release'}
  -- for python
  -- use { 'davidhalter/jedi-vim' }
  -- use { 'zchee/deoplete-jedi' }

  -- for javascript
  -- use { 'yuezk/vim-js' }
  -- use { 'HerringtonDarkholme/yats.vim' }
  -- use { 'maxmellon/vim-jsx-pretty' }

  -- file browser
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- autosave
  use "Pocco81/AutoSave.nvim"

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
end)
