require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})
vim.api.nvim_set_keymap('n', '<C-N>', ":NvimTreeToggle<CR>", { noremap = true }) -- remap Ctrl+n for using the mapping for nvim-tree
