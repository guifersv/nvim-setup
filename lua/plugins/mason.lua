return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"tree-sitter-cli",
				"stylua",
				"google-java-format",
				"jdtls",
			},
		},
	},
}
