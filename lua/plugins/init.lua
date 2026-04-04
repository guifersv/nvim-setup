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

require("plugins.git")

coq = require("coq")

conform = require("conform")
conform.formatters_by_ft.lua = { "stylua" }

wk = require("which-key")
wk.add({
	{ "<leader><tab>", group = "Tab", mode = "n" },
	{ "<leader>l", group = "Code", mode = "n" },
	{ "<leader>g", group = "Git", mode = "n" },
	-- { "<leader>c", group = "Trouble", mode = "n" },
	-- { "<leader>b", group = "Buffer", mode = "n" },
	-- { "<leader>z", group = "Zig", mode = "n" },
})

gs = require("gitsigns")
vim.keymap.set("n", "<leader>gd", gs.diffthis, { desc = "Git diff" })

vim.keymap.set("n", "<leader>gG", require("neogit").open, { desc = "Neogit UI" })
vim.keymap.set("n", "<leader>gg", function()
	require("neogit").open({ kind = "split" })
end, { desc = "Neogit floating UI" })

vim.cmd.colorscheme("oasis-twilight")
