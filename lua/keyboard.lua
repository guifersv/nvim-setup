local wk = require("which-key")
wk.add({
	{ "<leader>l", group = "Code", mode = "n" },
	{ "<leader>g", group = "Git", mode = "n" },
	{ "<leader>f", group = "Pick", mode = "n" },
	{ "<leader>d", group = "Debug", mode = "n" },
	-- { "<leader>b", group = "Buffers", mode = "n" },
})

local map = require("helpers.keys").map

map("n", "-", "<CMD>Oil<CR>", "Open parent directory")

map("i", "jk", "<esc>")

map("n", "<C-s>", "<cmd>w<cr>", "Write")
map("n", "<leader>w", "<cmd>wa<cr>", "Write all")
map("n", "<leader>q", "<cmd>qa<cr>", "Quit")
map("n", "<leader>Q", "<cmd>qa!<cr>", "Force Quit")

map("n", "<leader>lh", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, "Inlay Hints")

map("n", "<leader>ld", vim.diagnostic.open_float, "Show diagnostics under cursor")

map("n", "<M-h>", "^", "Go to beginning of line")
map("n", "<M-l>", "$", "Go to end of line")

map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")

map("n", "<S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<S-Right>", "<C-w><S-l>", "Move window to the right")

map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Deleting buffers
-- local buffers = require("helpers.buffers")
-- map("n", "<leader>db", buffers.delete_this, "Current buffer")
-- map("n", "<leader>do", buffers.delete_others, "Other buffers")
-- map("n", "<leader>da", buffers.delete_all, "All buffers")

map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")
