return {
    { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000, config = function ()
        vim.cmd([[colorscheme gruvbox]])
    end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {},
    },
    {
        "saghen/blink.cmp",
        build = "cargo build --release",
        opts = {
            keymap = {
                preset = "default",
                ["<Tab>"] = { "accept", "fallback" },
            },
            sources = {
                default = { "lsp", "path", "buffer" },
            },
        },
        opts_extend = { "sources.default" },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
    },
}

