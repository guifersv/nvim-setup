local set = vim.keymap.set
local ol = vim.opt_local

ol.expandtab = true
ol.shiftwidth = 4
ol.softtabstop = 4
ol.tabstop = 8

set("n", "<leader>zv", "ovar f: usize = 0;<CR>_ = &f;<ESC>", { desc = "Zig: runtime var" })
set(
	"n",
	"<leader>za",
	"ovar arena = std.heap.ArenaAllocator.init(std.testing.allocator);<CR>defer arena.deinit();<CR>const allocator = arena.allocator();<ESC>",
	{ desc = "Zig: ArenaAllocator" }
)

vim.treesitter.language.add("zig", { path = "/usr/lib/tree_sitter/zig.so" })
vim.lsp.enable("zls")
