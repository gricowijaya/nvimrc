vim.cmd [[
try
  let g:github_function_style = "italic"
  let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

  " Change the "hint" color to the "orange" color, and make the "error" color bright red
  let g:github_colors = {
    \ 'hint': 'orange',
    \ 'error': '#ff0000'
  \ }

  let g:github_comment_style = "italic"
  let g:github_keyword_style = "italic"
  let g:github_function_style = "italic"
  let g:github_variable_style = "italic"
  let g:github_dark_sidebar = 0

  " In your init.lua or init.vim
  set termguicolors

colorscheme github_dark
catch /^Vim\%((\a\+)\)\=:E185/
  " colorscheme wal
  " set background=dark
endtry
]]
