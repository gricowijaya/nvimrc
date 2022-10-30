local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
    formatting.eslint,
    formatting.autopep8,
    formatting.stylua,
}


null_ls.setup({
    debug = true,
    sources = sources,
    on_attach = function(client, bufnr)
        if client.server_capabilities.documentFormattingProvider then
            -- format on save
            vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
        end

        if client.server_capabilities.documentRangeFormattingProvider then
            vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
        end
    end,
})
