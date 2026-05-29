return {
	{
		"neovim/nvim-lspconfig",
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		opts = {},
	},
	{
		"folke/todo-comments.nvim",
		opts = {},
	},
	{
		"NeogitOrg/neogit",
		lazy = true,
		dependencies = {
			"sindrets/diffview.nvim",
		},
		cmd = "Neogit",
		keys = {
			{ "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>lf",
				function()
					require("conform").format({ async = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				java = { "google-java-format" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
		},
	},
}
