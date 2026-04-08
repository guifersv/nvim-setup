vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/folke/which-key.nvim" },
	{ src = "https://github.com/uhs-robert/oasis.nvim" },
})

vim.cmd.colorscheme("oasis-twilight")

conform = require("conform")
conform.formatters_by_ft.lua = { "stylua" }
conform.formatters_by_ft.markdown = { "prettier" }

wk = require("which-key")
wk.add({
	{ "<leader><tab>", group = "Tab", mode = "n" },
	{ "<leader>l", group = "Code", mode = "n" },
	{ "<leader>g", group = "Git", mode = "n" },
	{ "<leader>o", group = "Overseer", mode = "n" },
	{ "<leader>f", group = "Telescope", mode = "n" },
	{ "<leader>r", group = "Rust", mode = "n" },
	{ "<leader>z", group = "Zig", mode = "n" },
})

builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

require("plugins.git")
require("plugins.editor")
require("plugins.utils")
require("plugins.motion")
require("plugins.rust")
