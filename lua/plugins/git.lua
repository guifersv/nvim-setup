vim.pack.add({
	"https://github.com/sindrets/diffview.nvim",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/NeogitOrg/neogit",
})

gs = require("gitsigns")
vim.keymap.set("n", "<leader>gd", gs.diffthis, { desc = "Git diff" })

vim.keymap.set("n", "<leader>gG", require("neogit").open, { desc = "Neogit UI" })
vim.keymap.set("n", "<leader>gg", function()
	require("neogit").open({ kind = "floating" })
end, { desc = "Neogit floating UI" })
