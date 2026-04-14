vim.pack.add({
	"https://github.com/kylechui/nvim-surround",
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	"https://github.com/folke/todo-comments.nvim",
	"https://github.com/tpope/vim-repeat",
})

require("render-markdown").setup()
require("todo-comments").setup()
require("nvim-surround").setup()
