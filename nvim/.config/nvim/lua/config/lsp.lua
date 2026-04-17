vim.lsp.config.rust_analyzer.settings = {
    ["rust-analyzer"] = {
        completion = { callable = { snippets = "add_parentheses" } }
    },
}

vim.lsp.enable('clangd')
