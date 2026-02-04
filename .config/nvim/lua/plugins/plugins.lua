return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
		},
		lazy = false,
		opts = {
			close_if_last_window = true,
			default_component_configs = {
				name = {
					highlight_opened_files = true,
				},
			},
		},
	},
	{
		"nvim-telescope/telescope.nvim", version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {},
	},
}

