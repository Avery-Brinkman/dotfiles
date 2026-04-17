return {
    {
        "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000,
        config = function ()
            vim.cmd([[colorscheme gruvbox]])
        end
    },
    { "lewis6991/gitsigns.nvim" },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {},
    },
    {
        "numToStr/Comment.nvim",
        opts = {
            optleader = {
                line = "<C-_>",
            },
            toggler = {
                line = "<C-_>",
            },
        },
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
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make", },
        },
    },
    {
        "NeogitOrg/neogit", lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI", },
        },
    },
}

