vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/folke/which-key.nvim" },
	{ src = "https://github.com/uhs-robert/oasis.nvim" },
})

conform = require("conform")
conform.formatters_by_ft.lua = { "stylua" }

wk = require("which-key")
wk.add({
	{ "<leader><tab>", group = "Tab", mode = "n" },
	{ "<leader>l", group = "Code", mode = "n" },
	-- { "<leader>g", group = "Git", mode = "n" },
	-- { "<leader>c", group = "Trouble", mode = "n" },
	-- { "<leader>b", group = "Buffer", mode = "n" },
	-- { "<leader>z", group = "Zig", mode = "n" },
})

vim.cmd.colorscheme("oasis-twilight")
