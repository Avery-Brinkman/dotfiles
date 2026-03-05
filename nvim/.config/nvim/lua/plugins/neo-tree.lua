return {
	{
		"nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
		},
        keys = {
            { "<leader>f", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
        },
		lazy = false,
		opts = {
			close_if_last_window = true,
			default_component_configs = {
				name = {
					highlight_opened_files = true,
				},
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
				},
			},
		},
	},
}
