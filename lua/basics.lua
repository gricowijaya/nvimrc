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
vim.o.cursorline                = false
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
vim.o.showmode                  = false
vim.o.showtabline               = 0 -- set tabline to 2
vim.o.signcolumn                = 'yes'
vim.o.mouse                     = 'a' -- settings for mouse
vim.o.clipboard                 = 'unnamedplus' -- for using the yank to the clipboard
vim.o.t_Co                      = 256

-- clipboard settings
-- if vim.fn.has("wsl") then
--     vim.g.clipboard = {
--         name = "clip.exe (Copy Only)",
--         copy = {
--             ["+"] = "clip.exe",
--             ["*"] = "clip.exe"
--         },
--         paste = {
--             ["+"] = "clip.exe",
--             ["*"] = "clip.exe"
--         },
--         cache_enabled = true
--     }
-- end
