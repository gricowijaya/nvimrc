" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Compile Latex
nmap vc :VimtexCompile<CR>


" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>
"
" " I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" " Easy CAPS
" inoremap <c-u> <ESC>viwUi
" nnoremap <c-u> viwU<Esc>
"
" " TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" " SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
"
" Alternate way to save
nnoremap <C-s> :w<CR>
" " Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" " Use control-c instead of escape
" nnoremap <C-c> <Esc>
" " <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
" " Better tabbing
vnoremap < <gv
vnoremap > >gv
"
" " Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" settings function for the pair completion  
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
" what it basically do is just pair the parenthesis u need 
function! ConditionalPairMap(open, close)
  let line = getline('.')
  let col = col('.')
  if col < col('$') || stridx(line, a:close, col + 1) != -1
    return a:open
  else
    return a:open . a:close . repeat("\<left>", len(a:close))
  endif
endf
inoremap <expr> ( ConditionalPairMap('(', ')')
inoremap <expr> { ConditionalPairMap('{', '}')
inoremap <expr> [ ConditionalPairMap('[', ']')
inoremap <expr> < ConditionalPairMap('<', '>')
inoremap <expr> " ConditionalPairMap('"', '"')
inoremap <expr> ' ConditionalPairMap("'", "'")

" disable the default keymapping for ranger which is \f for the Plugins, i use
" different plugins at
" /home/gricowijaya/.config/nvim/plugins/plug-config/rnvimr.vim
" let g:ranger_map_keys = 0
" map <leader>f :Ranger<CR>

"open ranger when vim open a directory
" let g:ranger_replace_netrw = 1 
" let g:rnvimr_ex_enable = 1

"use Alt + hjkl to move between split/vsplit panels"
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


" copy to clipboard
vmap <C-c> "+y

" to clear highlighting
nnoremap // :noh<return>

" unwrap fold
nnoremap <space> za

" tagbar to see classes
nmap <F8> :TagbarToggle<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" normal/insert
" <Plug>MarkdownPreview
" <Plug>MarkdownPreviewStop
" <Plug>MarkdownPreviewToggle

" example
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-u> <Plug>MarkdownPreviewToggle

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Config for FZF
" nnoremap <C-p> :FZF<CR>
let g:fzf_action = { 
       \ 'ctrl-t':'tab split',
       \ 'ctrl-s':'split',
       \ 'ctrl-v':'vsplit'
       \}

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

nnoremap <M-m> :MarkdownPreview<CR>
