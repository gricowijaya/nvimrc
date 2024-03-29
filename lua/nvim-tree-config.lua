require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    relativenumber = true,
    adaptive_size = false,
    side = "right",
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "✓",
          unmerged = "",
          renamed = "",
          untracked = "ﱢ",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
  filters = {
    dotfiles = false,
    exclude = {
      ".*"
    },
  },
})

-- open nvim tree when it's
vim.api.nvim_tree_auto_open = 1
