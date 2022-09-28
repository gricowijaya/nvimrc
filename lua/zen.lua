local api = vim.api

api.nvim_set_keymap("n", "<leader>n", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>n", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>n", ":TZFocus<CR>", {})
api.nvim_set_keymap("n", "<leader>n", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>n", ":TZAtaraxis<CR>", {})
