-- disable netrw
vim.g.loaded_netrw              = 1
vim.g.loaded_netrwPlugin        = 1
-- basic settings
vim.g.mapleader                 = " "
vim.g.neovide_fullscreen        = false
vim.g.neovide_scale_factor      = 0.90 -- if you are using neovide
vim.o.guifont                   = "FiraCode-NF:h11"
vim.o.number                    = true
vim.o.relativenumber            = true -- relativenumber
vim.o.wrap                      = false
vim.o.expandtab                 = true
vim.o.incsearch                 = true
vim.o.tabstop                   = 2
vim.o.cursorline                = true
vim.o.ignorecase                = false -- specific searching
vim.o.hlsearch                  = false
vim.o.swapfile                  = false
vim.o.splitbelow                = true
vim.o.splitright                = true
vim.o.scrolloff                 = 3
vim.o.errorbells                = false
vim.o.shiftwidth                = 2
vim.o.numberwidth               = 5
vim.o.termguicolors             = true
vim.o.encoding                  = 'UTF-8'
vim.o.showmode                  = true
vim.o.showtabline               = 2 -- set tabline to 2
vim.o.signcolumn                = 'yes'
vim.o.mouse                     = 'a' -- settings for mouse
vim.o.clipboard                 = 'unnamedplus' -- for using the yank to the clipboard
vim.o.t_Co                      = 256

-- colorscheme
vim.cmd([[colorscheme onedark]])
