return {
	"echasnovski/mini.nvim",
	keys = {
		{
			"<leader>x",
			function()
				MiniBufremove.delete()
			end,
			desc = "Delete buffer",
		},
		{
			"<leader>j",
			function()
				MiniJump2d.start()
			end,
			desc = "Mini jump",
		},
		{
			"<leader>ff",
			function()
				MiniPick.builtin.files()
			end,
			desc = "Pick files",
		},
		{
			"<leader>fg",
			function()
				MiniPick.builtin.grep()
			end,
			desc = "Pick grep",
		},
		{
			"<leader>fh",
			function()
				MiniPick.builtin.help()
			end,
			desc = "Pick help",
		},
		{
			"<leader>fb",
			function()
				MiniPick.builtin.buffers()
			end,
			desc = "Pick buffers",
		},
	},
	config = function()
		require("mini.ai").setup()
		require("mini.move").setup()
		require("mini.splitjoin").setup()
		require("mini.surround").setup()
		require("mini.bufremove").setup()
		require("mini.diff").setup()
		require("mini.pick").setup()
		require("mini.icons").setup()
		require("mini.jump2d").setup()
		require("mini.tabline").setup()
	end,
}
