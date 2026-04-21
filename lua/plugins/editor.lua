vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/akinsho/bufferline.nvim",
	"https://github.com/nvim-tree/nvim-tree.lua",
	"https://github.com/nvim-lualine/lualine.nvim",
})

nt = require("nvim-tree.api")

local function edit_or_open()
	local node = nt.tree.get_node_under_cursor()
	if node.nodes ~= nil then
		nt.node.open.edit()
	else
		nt.node.open.edit()
		nt.tree.close()
	end
end

local function vsplit_preview()
	local node = nt.tree.get_node_under_cursor()
	if node.nodes ~= nil then
		nt.node.open.edit()
	else
		nt.node.open.vertical()
	end
	nt.tree.focus()
end

local function on_attach(bufnr)
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	vim.keymap.set("n", "l", edit_or_open, opts("Edit Or Open"))
	vim.keymap.set("n", "L", vsplit_preview, opts("Vsplit Preview"))
	vim.keymap.set("n", "h", nt.tree.close, opts("Close"))
	vim.keymap.set("n", "H", nt.tree.collapse_all, opts("Collapse All"))

	nt.config.mappings.default_on_attach(bufnr)
end

require("nvim-tree").setup({
	hijack_cursor = true,
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	view = {
		width = 30,
		relativenumber = true,
		side = "right",
		preserve_window_proportions = true,
	},
	renderer = {
		root_folder_label = false,
		highlight_git = true,
		indent_markers = {
			enable = false,
		},
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "󰉋",
					open = "󰝰",
					empty = "󰉖",
					empty_open = "󰷏",
					symlink = "󰉒",
					symlink_open = "󰉒",
				},
				git = {
					unstaged = "󰄱",
					staged = "󰄵",
					unmerged = "󰘬",
					renamed = "󰁔",
					untracked = "󰞋",
					deleted = "󰆴",
					ignored = "󰈉",
				},
			},
		},
	},
	filters = {
		dotfiles = true,
	},
	on_attach = on_attach,
})

vim.keymap.set("n", "<leader>e", nt.tree.toggle, { desc = "nvim-tree: toggle" })

require("bufferline").setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = true,
			},
		},
	},
})

vim.keymap.set("n", "<leader>bp", function()
	require("bufferline").toggle_pin()
end, { desc = "Bufferline: toggle Pin" })
vim.keymap.set("n", "<leader>br", function()
	require("bufferline").close_in_direction("right")
end, { desc = "Bufferline: delete buffers to the right" })
vim.keymap.set("n", "<leader>bl", function()
	require("bufferline").close_in_direction("left")
end, { desc = "Bufferline: delete buffers to the left" })
vim.keymap.set("n", "<leader>bo", function()
	require("bufferline").close_others()
end, { desc = "Bufferline: close other buffers" })
vim.keymap.set("n", "<leader>bb", function()
	require("bufferline").pick_buffer()
end, { desc = "Bufferline: pick buffer" })
vim.keymap.set("n", "<leader>bc", function()
	require("bufferline").close_with_pick()
end, { desc = "Bufferline: close buffer with pick" })

require("lualine").setup()
