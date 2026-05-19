require("helpers/globals")

lsp.config("gopls", {
	gofumpt = true,
})

vim.lsp.enable("zls")
vim.lsp.enable("gopls")
