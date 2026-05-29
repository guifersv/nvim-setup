-- vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH

require("zpack-bootstrap")

require("settings")

require("zpack").setup()

require("keyboard")

require("lsp")
