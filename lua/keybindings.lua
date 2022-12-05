-- custom keybindings

local opts = { noremap = true, silent = true } -- options

-- better vim motion
vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', opts) -- split the tab verticaly
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', opts) -- split the tab horizontally
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', opts) -- navigate to new tab
vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', opts) -- navigate to next tab
vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', opts) -- navigate to previous tab
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', opts) -- only one tab
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', opts) -- find and replace
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", opts) -- open terminal
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", opts)
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', opts) -- to esc with jk

-- vim keybinding movement through the buffer
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', opts)
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', opts)
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', opts)
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', opts)

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- luasnip setup
local luasnip = require('luasnip')

-- nvim-cmp keybinding setup
local cmp = require('cmp')
cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
}
