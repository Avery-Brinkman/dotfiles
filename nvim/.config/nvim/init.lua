require("config.lazy")
require("config.options")
require("config.autocmds")
require("config.keymaps")

vim.lsp.config.rust_analyzer.settings = {
    ["rust-analyzer"] = {
        completion = { callable = { snippets = "add_parentheses" } }
    },
}

