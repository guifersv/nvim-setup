vim.lsp.enable("zls")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		vim.lsp.completion.enable(true, args.data.client_id, args.buf)
	end,
})
