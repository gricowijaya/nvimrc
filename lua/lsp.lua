-- get the plugin
local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
local opts = { noremap = true, silent = true } -- options

-- for configuration in the lsp config on line 56
local on_attach = function(client, bufnr)
  require('completion').on_attach()

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts) -- go to declaration
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts) -- goo to code definition
  buf_set_keymap('n', 'gH', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'gh', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gdf', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts) -- code documentation
  buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'gcc', '<cmd>terminal gcc main.c -o main; ./main<CR>', opts) -- code documentation
  buf_set_keymap('n', 'g++', '<cmd>terminal g++ main.cpp -o main; ./main<CR>', opts) -- code documentation
  buf_set_keymap('n', 'ggo', '<cmd>terminal go run main.go<CR>', opts) -- code documentation
  buf_set_keymap('n', 'ggt', '<cmd>terminal go test -v ./...<CR>', opts) -- code documentation
  buf_set_keymap('n', 'gnd', '<cmd>terminal npm run dev<CR>', opts) -- code documentation
  -- buf_set_keymap('n', 'ge', '<cmd>lua vim.lsp.diagnostic.get_line_diagnostics()<CR>', opts)
  -- buf_set_keymap('n', '[d'        , '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  -- buf_set_keymap('n', ']d'        , '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  -- buf_set_keymap('n', '<space>q'  , '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "gf", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "gf", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", opts)
  end
end

-- 1. Set up nvim-lsp-installer first!
lsp_installer.setup {}

-- 2. (optional) Override the default configuration to be applied to all servers.
lspconfig.util.default_config = vim.tbl_extend(
  "force",
  lspconfig.util.default_config,
  {
    handlers = Handlers
  }
)

-- 3. Loop through all of the installed servers and set it up via lspconfig
for _, server in ipairs(lsp_installer.get_installed_servers()) do
  lspconfig[server.name].setup {
    on_attach = on_attach,
  }
end

-- 4. for lua configuration define vim variable
lspconfig.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

-- 5. auto complete colorschemes border
vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

-- -- LSP settings (for overriding per client)
Handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'single' }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'single' }),
}

-- diagnostics settings
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]
