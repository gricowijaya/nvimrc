-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 4
vim.o.numberwidth = 1
vim.o.termguicolors = true
vim.o.encoding = 'UTF-8'
vim.o.showmode = true
vim.o.showtabline = 6
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.t_Co = 256
-- vim.o.colorcolumn = '80'

vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {}) -- to esc with jk 

-- colorscheme
vim.cmd([[colorscheme onedark]])

-- netrw config
-- vim.g["netrw_banner"] = 0
-- vim.g["netrw_liststyle"] = 3
-- vim.g["netrw_winsize"] = 25
