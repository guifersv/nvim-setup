local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

g.coq_settings = {
	auto_start = true,
	completion = {
		always = false,
	},
	display = {
		statusline = {
			helo = false,
		},
	},
}

opt.autowrite = true
-- opt.clipboard = "unnamedplus"
opt.confirm = true
opt.cursorline = true
opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 4
opt.sidescrolloff = 8
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.shiftround = true
opt.completeopt = "menu,menuone,noselect"
opt.incsearch = true
opt.hlsearch = true
opt.foldlevel = 99
opt.foldenable = true
opt.laststatus = 3
opt.pumheight = 10
opt.pumblend = 10
opt.winminwidth = 5
opt.timeoutlen = 300
opt.updatetime = 200
opt.undofile = true
opt.formatoptions:append("jcroqlnt")
opt.sessionoptions:append({ "unix", "slash" })

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
