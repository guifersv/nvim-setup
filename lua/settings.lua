require("helpers/globals")

-- vim.opt.clipboard = "unnamedplus" -- Connection to the system clipboard.
-- vim.opt.cmdheight = 0 -- Hide command line unless needed.
-- vim.opt.showmode = false -- Disable showing modes in command line.
-- vim.opt.undofile = true -- Enable persistent undo between session and reboots.
-- vim.opt.updatetime = 300 -- Length of time to wait before triggering the plugin.
-- vim.opt.writebackup = false -- Disable making a backup before overwriting a file.
-- vim.opt.swapfile = false -- Ask what state to recover when opening a file that was not saved.
-- vim.opt.autochdir = true -- Use current file dir as working dir (See project.nvim).

g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

opt.breakindent = true
opt.completeopt = { "menu", "menuone", "noselect" }
opt.copyindent = true
opt.cursorline = true
opt.expandtab = true
opt.fillchars = { eob = " " }
opt.foldlevel = 99
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevelstart = 99
opt.ignorecase = true
opt.infercase = true
opt.laststatus = 3
opt.linebreak = true
opt.number = true
opt.preserveindent = true
opt.pumheight = 10
opt.relativenumber = true
opt.shiftwidth = 2
opt.showtabline = 2
opt.signcolumn = "yes"
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.virtualedit = "block"
opt.wrap = true
opt.scrolloff = 1000
opt.sidescrolloff = 8
opt.selection = "old"

opt.viewoptions:remove("curdir")
opt.shortmess:append({ s = true, I = true })
opt.backspace:append({ "nostop" })
opt.diffopt:append({ "algorithm:histogram", "linematch:60" })

g.mapleader = " "
g.maplocalleader = ","

local disabled_built_ins = {
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit",
}

for _, plugin in pairs(disabled_built_ins) do
	g["loaded_" .. plugin] = 1
end
