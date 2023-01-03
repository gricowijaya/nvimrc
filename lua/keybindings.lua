-- custom keybindings

local opts = { noremap = true, silent = true } -- options

-- better vim motion
vim.api.nvim_set_keymap('n', 'vs'          , ':vs<CR>', opts) -- split the tab verticaly
vim.api.nvim_set_keymap('n', 'sp'          , ':sp<CR>', opts) -- split the tab horizontally
vim.api.nvim_set_keymap('n', 'tn'          , ':tabnew<CR>', opts) -- navigate to new tab
vim.api.nvim_set_keymap('n', 'tk'          , ':tabnext<CR>', opts) -- navigate to next tab
vim.api.nvim_set_keymap('n', 'tj'          , ':tabprev<CR>', opts) -- navigate to previous tab
vim.api.nvim_set_keymap('n', 'to'          , ':tabo<CR>', opts) -- only one tab
vim.api.nvim_set_keymap('n', '<C-S>'       , ':%s/', opts) -- find and replace
vim.api.nvim_set_keymap('n', '<leader>t'   , ':sp<CR> :terminal<CR> i', opts) -- open terminal
vim.api.nvim_set_keymap('t', '<Esc>'       , '<C-\\><C-n>', opts)
vim.api.nvim_set_keymap('i', 'jk'          , '<Esc>', opts) -- to esc with jk
vim.api.nvim_set_keymap('n', '<C-d>'       , '<C-d>zz', opts) -- to esc with jk
vim.api.nvim_set_keymap('n', '<C-u>'       , '<C-u>zz', opts) -- to esc with jk
vim.api.nvim_set_keymap('n', '<C-N>'       , ':NvimTreeToggle<CR>', opts) -- remap Ctrl+n for using the mapping for nvim-tree
vim.api.nvim_set_keymap('n', '<C-Z>'       , ':ZenMode<CR>', opts) -- remap Ctrl+k for using zen mode

-- vim keybinding movement through the buffer
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', opts) -- Go Left
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', opts) -- Go Right
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', opts) -- Go Up
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', opts) -- Go Down

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
