local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

opt.wrap = true
opt.linebreak = true
opt.textwidth = 80
opt.breakindent = true
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
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
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

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
