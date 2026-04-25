local set = vim.keymap.set
local ol = vim.opt_local

ol.expandtab = false
ol.shiftwidth = 0
ol.softtabstop = 0

require("dap-go").setup()

vim.treesitter.language.add("go", { path = "/usr/lib/libtree-sitter-go.so" })
vim.lsp.enable("gopls")
