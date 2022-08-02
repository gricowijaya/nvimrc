-- tokyonight_style
-- vim.g.tokyonight_style = 'night'
-- vim.cmd([[colorscheme tokyonight]])
-- vim.o.background = 'dark'
vim.o.background = 'dark'
vim.cmd([[
colorscheme deus
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:deus_termcolors=256
]])

