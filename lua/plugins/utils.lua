vim.pack.add({
	{ src = "https://github.com/kylechui/nvim-surround" },
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
	{ src = "https://github.com/folke/todo-comments.nvim" },
	{ src = "https://github.com/tpope/vim-repeat" },
})

require("render-markdown").setup()
require("todo-comments").setup()
require("nvim-surround").setup()
