local set = vim.keymap.set

set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
set("n", "<leader>q", "<cmd>qa<cr>", { desc = "Close All" })
set("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Force Close All" })
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

set("i", "jk", "<Esc>")

set("n", "<C-Up>", "<cmd>resize +4<cr>", { desc = "Increase Window Height" })
set("n", "<C-Down>", "<cmd>resize -4<cr>", { desc = "Decrease Window Height" })
set("n", "<C-Left>", "<cmd>vertical resize -4<cr>", { desc = "Decrease Window Width" })
set("n", "<C-Right>", "<cmd>vertical resize +4<cr>", { desc = "Increase Window Width" })

set("t", "<C-x>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
set("n", "<leader><tab>c", "<cmd>tabclose<cr>", { desc = "Close Tab" })
set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
set("n", "<leader><tab>t", "<cmd>tablast<cr>", { desc = "Last Tab" })
set("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
set("n", "<leader><tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Local Keymaps (which-key)" })
-- set("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Show Neogit UI" })
vim.keymap.set("n", "<leader>x", ":bd<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-space>", vim.lsp.completion.get)

set("n", "<leader>lh", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle Inlay Hints" })
set("n", "<leader>ld", function()
	vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle Diagnostic" })
set("n", "<leader>lf", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })

set("n", "<leader>zv", "ovar f: usize = 0;<CR>_ = &f;<ESC>", { desc = "Zig: runtime var" })
set(
	"n",
	"<leader>za",
	"ovar arena = std.heap.ArenaAllocator.init(std.testing.allocator);<CR>defer arena.deinit();<CR>const allocator = arena.allocator();<ESC>",
	{ desc = "Zig: ArenaAllocator" }
)
