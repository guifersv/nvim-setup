vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/ms-jpq/coq_nvim" },
	{ src = "https://github.com/ms-jpq/coq.artifacts" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/folke/which-key.nvim" },
	{ src = "https://github.com/uhs-robert/oasis.nvim" },
})

vim.cmd.colorscheme("oasis-twilight")

require("plugins.git")
require("plugins.editor")

coq = require("coq")

conform = require("conform")
conform.formatters_by_ft.lua = { "stylua" }

wk = require("which-key")
wk.add({
	{ "<leader><tab>", group = "Tab", mode = "n" },
	{ "<leader>l", group = "Code", mode = "n" },
	{ "<leader>g", group = "Git", mode = "n" },
	{ "<leader>b", group = "Buffer", mode = "n" },
	-- { "<leader>z", group = "Zig", mode = "n" },
})
