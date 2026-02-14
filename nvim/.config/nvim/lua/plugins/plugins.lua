return {
    { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000, config = function ()
        vim.cmd([[colorscheme gruvbox]])
    end
    },
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"hrsh7th/nvim-cmp",
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			handlers = {
				function(server_name)
					local capabilities = vim.lsp.protocol.make_client_capabilities()
					capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

					vim.lsp.config(server_name, {
						capabilities = capabilities,
					})
				end
			}
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		event = "InsertEnter",
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				completion = {
					autocomplete = { cmp.TriggerEvent.TextChanged },
				},
				mapping = {
					["<C-Space>"] = cmp.mapping.complete(),
					["<Tab>"] = cmp.mapping.confirm({ select = true }),
					["<Up>"] = cmp.mapping.select_prev_item(),
					["<Down>"] = cmp.mapping.select_next_item(),
				},
				sources = {
					{ name = "nvim_lsp" },
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
	},
	{
		"nvim-telescope/telescope.nvim", version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {},
	},
}

