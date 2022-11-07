-- get the plugin
local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")

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
    lspconfig[server.name].setup {}
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
 -- vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

 local border = {
     { "🭽", "FloatBorder" },
     { "▔", "FloatBorder" },
     { "🭾", "FloatBorder" },
     { "▕", "FloatBorder" },
     { "🭿", "FloatBorder" },
     { "▁", "FloatBorder" },
     { "🭼", "FloatBorder" },
     { "▏", "FloatBorder" },
 }

-- -- LSP settings (for overriding per client)
Handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

