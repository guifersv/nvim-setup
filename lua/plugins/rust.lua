vim.pack.add({
	{ src = "https://github.com/Saecki/crates.nvim" },
	{ src = "https://github.com/mrcjkb/rustaceanvim", version = vim.version.range("^9") },
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "Cargo.toml",
	callback = function()
		require("crates").setup()
	end,
})

vim.keymap.set("n", "<leader>ra", function()
	vim.cmd.RustLsp("codeAction")
end, { desc = "Rust: code action", silent = true })
vim.keymap.set("n", "<leader>rk", function()
	vim.cmd.RustLsp({ "hover", "actions" })
end, { desc = "Rust: hover", silent = true })
vim.keymap.set("n", "<leader>rr", function()
	vim.cmd.RustLsp("run")
end, { desc = "Rust: run", silent = true })
vim.keymap.set("n", "<leader>rR", function()
	vim.cmd.RustLsp("runnables")
end, { desc = "Rust: runnables", silent = true })
vim.keymap.set("n", "<leader>rt", function()
	vim.cmd.RustLsp("testables")
end, { desc = "Rust: testables", silent = true })
